package priv.gzz.user.filter;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import priv.gzz.user.http.MyRequestWrapper;

public class I18nFilter implements Filter {
	private static final String USER_SUPPORT_LANGUAGE = "user.support.languages";
	
	private static final String USER_LANGUAGE = "language";

	private static Map<String, String> supportLanguages = new HashMap<String, String>() {
		private static final long serialVersionUID = 1L;
		{
			put("zh_CN", "中文");
			put("en_US", "English");
		}
	};

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException,
			ServletException {
		HttpServletRequest r = (HttpServletRequest) req;
		Object langs = r.getSession().getAttribute("USER_SUPPORT_LANGUAGE");
		if (langs == null) {
			r.getSession().setAttribute(USER_SUPPORT_LANGUAGE, supportLanguages);
		}
		if(r.getParameterMap().containsKey("request_locale")){
			r.getSession().setAttribute(USER_LANGUAGE, r.getParameter("request_locale"));
		}
		MyRequestWrapper request = new MyRequestWrapper(r);
		filterChain.doFilter(request, resp);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
	}
}
