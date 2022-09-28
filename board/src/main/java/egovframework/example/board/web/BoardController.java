package egovframework.example.board.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.example.board.service.BoardService;
import egovframework.example.board.service.BoardVO;
import egovframework.example.sample.service.EgovSampleService;

@Controller
public class BoardController {
	
	@Resource(name = "boardService")
	private BoardService boardService;
	
	@RequestMapping(value = "/list.do")
	public String list(ModelMap model) throws Exception {
		return "board/list";
	}
	
	@RequestMapping(value = "/mgmt.do")
	public String mgmt(ModelMap model) throws Exception {
		return "board/mgmt";
	}
	
	@RequestMapping(value = "/view.do")
	public String view(ModelMap model) throws Exception {
		return "board/view";
	}
	
	@RequestMapping(value = "/login.do")
	public String login(@RequestParam("user_id") String user_id, @RequestParam("password") String password,
			ModelMap model, HttpServletRequest request) throws Exception {
		
		// 아래는 예전에 많이 썼던 방식 위의 @RequestParam의 기능과 동일.
		// String aa = request.getParameter("user_id");
		// String bb = request.getParameter("password");
		
		System.out.println("user_id : " + user_id);
		System.out.println("password : " + password);
		
		BoardVO boardVO = new BoardVO();
		boardVO.setUserId(user_id);
		boardVO.setPassword(password);
		String user_name = boardService.selectLoginCheck(boardVO);
		
		// 세션 로그인처리
		if(user_name != null && !"".equals(user_name)) {
			request.getSession().setAttribute("userId", user_id);
			request.getSession().setAttribute("userName", user_name);
		}else {
			request.getSession().setAttribute("userId", "");
			request.getSession().setAttribute("userName", "");
		}
		
		
		return "board/list";
	}

}
