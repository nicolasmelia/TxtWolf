import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_textNotesV1_loginCreateAccount_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/login/CreateAccount.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',10,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',10,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':("/"),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':("/"),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(3)
invokeTag('resource','g',13,['dir':("css"),'file':("main.boot.css")],-1)
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
createTagBody(2, {->
printHtmlPart(9)
invokeTag('actionSubmit','g',98,['class':("special"),'id':("submitBtn"),'onclick':("return validateForm()"),'value':("Create Account"),'action':("createAccount"),'style':("width: 100%")],-1)
printHtmlPart(10)
})
invokeTag('form','g',107,['class':("form-signin"),'controller':("Login"),'action':("createAccount"),'enctype':("multipart/form-data")],2)
printHtmlPart(11)
invokeTag('javascript','g',175,['src':("jquery.min.js")],-1)
printHtmlPart(12)
invokeTag('javascript','g',176,['src':("jquery.dropotron.min.js")],-1)
printHtmlPart(13)
invokeTag('javascript','g',177,['src':("jquery.scrollgress.min.js")],-1)
printHtmlPart(12)
invokeTag('javascript','g',178,['src':("skel.min.js")],-1)
printHtmlPart(12)
invokeTag('javascript','g',179,['src':("util.js")],-1)
printHtmlPart(14)
invokeTag('javascript','g',180,['src':("main.js")],-1)
printHtmlPart(14)
invokeTag('javascript','g',181,['src':("jquery.scrolly.min.js")],-1)
printHtmlPart(15)
invokeTag('javascript','g',182,['src':("ie/respond.min.js")],-1)
printHtmlPart(16)
})
invokeTag('captureBody','sitemesh',255,[:],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1450842439384L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}