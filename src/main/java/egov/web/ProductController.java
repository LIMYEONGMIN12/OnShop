package egov.web;

import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import egov.service.ProductService;
import egov.service.ProductVO;
import egov.service.WishlistVO;
import egovframework.rte.fdl.property.EgovPropertyService;

@Controller
public class ProductController {
	/** EgovPropertyService */
	@Resource(name = "propertiesService")
	protected EgovPropertyService ps;
	
	@Resource(name = "multipartResolver")
	CommonsMultipartResolver multipartResolver;
	
	@Resource(name="productService")
	ProductService productService;
	
	/* 메인페이지 */
	@RequestMapping("ShoppingMain.do")
	public String Shopping_index(ProductVO vo,Model model )throws Exception  {
		

		 
		
		 List<?> list = productService.selectMainList(vo);
		 List<?> list2 = productService.selectMainListnew(vo);
		 
		 
		 model.addAttribute("list2",list2);
		 model.addAttribute("list",list);
		 
		return "main/index";
	}
	
	/* 상품등록화면 */
	@RequestMapping("/ProductWrite.do")
	public String productWrite() throws Exception {

		return "product/productWrite";
	}
	
	/* 상품 상세 화면  */
	@RequestMapping("/productDetail.do")
	public String SelectProductDetail(ProductVO vo,WishlistVO wvo,Model model,HttpServletRequest request) throws Exception {

		
		
		HttpSession session = request.getSession();
		
		
		
		ProductVO pvo = productService.selectProductDetail(vo);
		String filename = pvo.getFilename();
		
		
		String productname = pvo.getProductName();
		List<?> list = productService.selectSizeColor(productname);
		
		
		
				
		String file[] = pvo.getFilename().split("/");
		
		
		int length = file.length;
		
		for(int i=0; i<length; i++) {
			model.addAttribute("file"+i,file[i]);
		}
		
		
		model.addAttribute("list",list);
		model.addAttribute("filename", filename);
		model.addAttribute("vo",pvo);
		
		
		if(session !=null) {
			String  punq = vo.getProductUnq()+"";
			String userid = (String) session.getAttribute("SESSION_USERID");
			
			wvo.setWishpunq(punq);
			wvo.setWishuserid(userid);
			
			System.out.println("DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD"+userid);
			int wished = productService.selectCountWish(wvo);
			
			if(wished ==1) {
				String clic = "clic";
				model.addAttribute("clic",clic);
			}
			
		}
		
		
		
		
		
		
		
		
		
		return "product/productDetail";
	}
	
	
	
	
	
	/* 상품등록 저장 */
	@RequestMapping("/ProductWriteSave.do")
	@ResponseBody
	public String ProductWriteSave(  MultipartHttpServletRequest multiRequest,ProductVO vo )
			throws Exception {
		
		
		
		String path = ps.getString("upload_path"); // 경로(upload 폴더)
		Map map = fileupload(multiRequest,path);   // filename, filesize
		
		
		// map에 있는 filename과 filesize를  vo로 옮김 
		vo.setFilename(map.get("filename")+"");
		vo.setFilesize(map.get("filesize")+"");
		
		// filename = "a.jpg/b.jpb/";
		String msg = "ok";
	
		String result = productService.insertProduct(vo);
		if( result != null) msg = "fail"; 
		
		return msg;
	
	}
	
	
	/* 상품 카테고리별 화면 */
	@RequestMapping("/productCategory.do")
	public String selectProductCategory(ProductVO vo,Model model) throws Exception {

		 List<?> list = productService.selectGubunList(vo);
		 model.addAttribute("list",list);
		
		
		
		return "product/productCategory";
	}
	
	
	
	/* 상품목록 출력  */
	@RequestMapping("/productList.do")
	public String selectProductList(ProductVO vo, Model model) 
								throws Exception {
		
		int page_no = vo.getPage_no();  // 1->1 ;; 2->11 ;; 3->21
		int page_unit = vo.getPage_unit();
		
		int s_no = (page_no-1)*page_unit + 1;
		int e_no = s_no + (page_unit-1);
		
		vo.setS_no(s_no);
		vo.setE_no(e_no);
		vo.setUnq3("0");
		List<?> list2 = productService.selectProductList(vo);
		int total = productService.selectProductTotal(vo);
		int total_page = (int)Math.ceil((double)total/10);
		
		
		
		vo.setTotal(total);
		vo.setTotal_page(total_page);
		
	
		
		int rownum = total - (page_no-1)*10;
	
		
		model.addAttribute("s_field",vo.getS_field());
		model.addAttribute("s_text",vo.getS_text());
		
		model.addAttribute("list2",list2);
		model.addAttribute("total",total);
		model.addAttribute("total_page",total_page);
		model.addAttribute("rownum",rownum);		
		
		return "product/productList";
	}
	
	
	
	
	
	
	
	
	
	
	
	/* 파일 업로드 (이미지 ) */
public static Map fileupload( MultipartHttpServletRequest multiRequest, String path) throws Exception {
		
		MultipartFile file;
		String save_dir  = path;
		String save_file  = "";
		
		Map<String,String> map = new HashMap<String,String>();
		String filename = "";
		String filesize = "";
		
		//   /tmp ---> 임시 저장
		/*   - a.jpg
		 * map -> { "aaa":"dfsfsfsfs121212.xcxxvc" , "org ~~ ":"a.jpg" , "filesize":"98" , "filetype":"image" } , 
		 * map -> { "aaa":"sdsdfdfsdfsdf.dddd"     , "org ~~ ":"b.jpg" , "filesize":"100" , "filetype":"image" } 
		 * 
		 */
		Map<String, MultipartFile> files = multiRequest.getFileMap();
		// 맵의 key(column) 값
		Iterator<Entry<String, MultipartFile>> itr = files.entrySet().iterator();
		
		while ( itr.hasNext() ) {
			Entry<String, MultipartFile> entry = itr.next();
			file = entry.getValue();
			
			save_file = save_dir + "/" + file.getOriginalFilename();
			
			if( !file.getOriginalFilename().equals("") ) {
				filename += file.getOriginalFilename() + "/";
				filesize += file.getSize() + "/";
				// upload(설정) 폴더로 데이터 옮김
				file.transferTo(new File(save_file));
			}
		}
		map.put("filename", filename);  //   filename -> "a.jpg/b.jpg/"
		map.put("filesize", filesize);

		return map;
	}
}
