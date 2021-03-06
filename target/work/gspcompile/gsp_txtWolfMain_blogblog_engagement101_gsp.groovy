import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_txtWolfMain_blogblog_engagement101_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/blog/blog_engagement101.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',9,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',9,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':("/"),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(3)
expressionOut.print(resource(dir: 'images', file: 'dashboard/default_avatar.png'))
printHtmlPart(4)
invokeTag('resource','g',13,['dir':("css"),'file':("main.boot.css")],-1)
printHtmlPart(5)
invokeTag('javascript','g',16,['src':("ie/html5shiv.js")],-1)
printHtmlPart(6)
invokeTag('resource','g',17,['dir':("css"),'file':("ie8.css")],-1)
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',37,[:],1)
printHtmlPart(8)
createTagBody(1, {->
printHtmlPart(9)
expressionOut.print(createLink(controller: 'Home'))
printHtmlPart(10)
expressionOut.print(createLink(controller: 'Home'))
printHtmlPart(11)
expressionOut.print(createLink(controller: 'blog', params: [blogID: '1']))
printHtmlPart(12)
expressionOut.print(createLink(controller: 'Home', action: 'pricing'))
printHtmlPart(13)
if(true && (session.userID)) {
printHtmlPart(14)
expressionOut.print(createLink(controller: 'Dashboard'))
printHtmlPart(15)
}
else {
printHtmlPart(14)
expressionOut.print(createLink(controller: 'login'))
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (session.userID)) {
printHtmlPart(14)
expressionOut.print(createLink(controller: 'Login', action: 'logout'))
printHtmlPart(18)
}
else {
printHtmlPart(14)
expressionOut.print(createLink(controller: 'login', action: 'newAccount'))
printHtmlPart(19)
}
printHtmlPart(20)
expressionOut.print(createLink(controller: 'blog', params: [blogID: '2']))
printHtmlPart(21)
expressionOut.print(resource(dir: 'images', file: 'blog/keywords/blog4Thumbnail.jpg'))
printHtmlPart(22)
expressionOut.print(createLink(controller: 'blog', params: [blogID: '2']))
printHtmlPart(23)
expressionOut.print(resource(dir: 'images', file: 'blog/keywords/wolfBanner.jpg'))
printHtmlPart(24)
expressionOut.print(createLink(controller: 'affiliateProgram'))
printHtmlPart(25)
expressionOut.print(createLink(controller: 'blog', params: [blogID: '1']))
printHtmlPart(26)
expressionOut.print(createLink(controller: 'blog', params: [blogID: '2']))
printHtmlPart(27)
invokeTag('javascript','g',193,['src':("jquery.min.js")],-1)
printHtmlPart(28)
invokeTag('javascript','g',194,['src':("jquery.dropotron.min.js")],-1)
printHtmlPart(29)
invokeTag('javascript','g',195,['src':("jquery.scrollgress.min.js")],-1)
printHtmlPart(28)
invokeTag('javascript','g',196,['src':("skel.min.js")],-1)
printHtmlPart(28)
invokeTag('javascript','g',197,['src':("util.js")],-1)
printHtmlPart(30)
invokeTag('javascript','g',198,['src':("main.js")],-1)
printHtmlPart(30)
invokeTag('javascript','g',199,['src':("jquery.scrolly.min.js")],-1)
printHtmlPart(31)
invokeTag('javascript','g',200,['src':("ie/respond.min.js")],-1)
printHtmlPart(32)
})
invokeTag('captureBody','sitemesh',202,[:],1)
printHtmlPart(33)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1483922983986L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
