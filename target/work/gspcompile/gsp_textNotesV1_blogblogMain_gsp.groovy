import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_textNotesV1_blogblogMain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/blog/blogMain.gsp" }
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
invokeTag('resource','g',12,['dir':("css"),'file':("main.boot.css")],-1)
printHtmlPart(4)
invokeTag('javascript','g',15,['src':("ie/html5shiv.js")],-1)
printHtmlPart(5)
invokeTag('resource','g',16,['dir':("css"),'file':("ie8.css")],-1)
printHtmlPart(6)
})
invokeTag('captureHead','sitemesh',17,[:],1)
printHtmlPart(7)
createTagBody(1, {->
printHtmlPart(8)
expressionOut.print(createLink(controller: 'blog'))
printHtmlPart(9)
if(true && (session.userID)) {
printHtmlPart(10)
expressionOut.print(createLink(controller: 'Dashboard'))
printHtmlPart(11)
}
else {
printHtmlPart(10)
expressionOut.print(createLink(controller: 'login'))
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (session.userID)) {
printHtmlPart(10)
expressionOut.print(createLink(controller: 'Login', action: 'logout'))
printHtmlPart(14)
}
else {
printHtmlPart(10)
expressionOut.print(createLink(controller: 'login', action: 'newAccount'))
printHtmlPart(15)
}
printHtmlPart(16)
invokeTag('javascript','g',191,['src':("jquery.min.js")],-1)
printHtmlPart(17)
invokeTag('javascript','g',192,['src':("jquery.dropotron.min.js")],-1)
printHtmlPart(18)
invokeTag('javascript','g',193,['src':("jquery.scrollgress.min.js")],-1)
printHtmlPart(17)
invokeTag('javascript','g',194,['src':("skel.min.js")],-1)
printHtmlPart(17)
invokeTag('javascript','g',195,['src':("util.js")],-1)
printHtmlPart(19)
invokeTag('javascript','g',196,['src':("main.js")],-1)
printHtmlPart(19)
invokeTag('javascript','g',197,['src':("jquery.scrolly.min.js")],-1)
printHtmlPart(20)
invokeTag('javascript','g',198,['src':("ie/respond.min.js")],-1)
printHtmlPart(21)
})
invokeTag('captureBody','sitemesh',200,[:],1)
printHtmlPart(22)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1479347157220L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
