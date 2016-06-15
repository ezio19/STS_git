package dz.ifa.security;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.DefaultHandlerExceptionResolver;

@ControllerAdvice
public class GlobalExceptionController extends DefaultHandlerExceptionResolver{

//	@ExceptionHandler(HttpRequestMethodNotSupportedException.class)
//    public ModelAndView handleError405(HttpServletRequest request, Exception e)   {
//            ModelAndView mav = new ModelAndView("/405");
//            mav.addObject("exception", e);  
//            //mav.addObject("errorcode", "405");
//            return mav;
//      }
	
	@Override
	@ExceptionHandler
	protected ModelAndView handleHttpRequestMethodNotSupported(HttpRequestMethodNotSupportedException ex,
			HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException {
		ModelAndView mav = new ModelAndView("redirect:405.html");
        mav.addObject("exception", ex);
        return mav;
		//return super.handleHttpRequestMethodNotSupported(ex, request, response, handler);
	}
}
