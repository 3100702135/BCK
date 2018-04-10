package com.common.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.system.entity.User;
import com.system.service.UserService;

public class LoginInterceptor  implements HandlerInterceptor {

    @Resource    
    private UserService userService;  
      
    /**  
     * preHandle方法是进行处理器拦截用的，该方法将在Controller处理之前进行调用，SpringMVC中的Interceptor拦截器是链式的，可以同时存在  
     * 多个Interceptor，然后SpringMVC会根据声明的前后顺序一个接一个的执行，而且所有的Interceptor中的preHandle方法都会在  
     * Controller方法调用之前调用。SpringMVC的这种Interceptor链式结构也是可以进行中断的，这种中断方式是令preHandle的返  
     * 回值为false，当preHandle的返回值为false的时候整个请求就结束了。  
     */    
    @Override  
    public boolean preHandle(HttpServletRequest request,  
            HttpServletResponse response, Object handler) throws Exception {  
        User loginUser = (User) request.getSession().getAttribute("loginUser");  
          
        if(loginUser == null){  
            String loginCookieUserName = "";  
            String loginCookiePassword = "";  
              
            Cookie[] cookies = request.getCookies();  
            if(null!=cookies){    
                for(Cookie cookie : cookies){    
                    //if("/".equals(cookie.getPath())){ //getPath为null  
                        if("loginUserName".equals(cookie.getName())){  
                            loginCookieUserName = cookie.getValue();  
                        }else if("loginPassword".equals(cookie.getName())){  
                            loginCookiePassword = cookie.getValue();  
                        }  
                    //}  
                }    
                if(!"".equals(loginCookieUserName) && !"".equals(loginCookiePassword)){
                	User userInfo =  new User();
                	userInfo.setUserName(loginCookieUserName);
                    User user = userService.getUserInfo(userInfo);  
                    if(loginCookiePassword.equals(user.getPassWord())){  
                        request.getSession().setAttribute("loginUser", user);  
                    }  
                }  
            }   
        }  
        return true;  
    }  
    
	@Override
	public void afterCompletion(HttpServletRequest arg0,
			HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		return;
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
			Object arg2, ModelAndView arg3) throws Exception {
		// TODO Auto-generated method stub
		return;
	}



}
