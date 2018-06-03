<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>

<tags:pageTemplate titulo="Livros de Java, Android, IOs, Mobile e muito mais...">
	<main>
		<p class="destaqueDoCupom">
  Use o código <strong class="destaqueDoCupom-codigo"></strong> e tenha <strong class="destaqueDoCupom-desconto">10%</strong> de desconto!
  <button class="destaqueDoCupom-remover" title="Remover banner" onclick="removeDiscountBanner()"><?xml version="1.0" encoding="iso-8859-1"?>
<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="15px" height="15px" viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve">
<g>
	<path fill="#ffffff" d="M387.128,170.748L306,251.915l-81.128-81.167l-54.124,54.124L251.915,306l-81.128,81.128l54.085,54.086L306,360.086
		l81.128,81.128l54.086-54.086L360.086,306l81.128-81.128L387.128,170.748z M522.38,89.62
		c-119.493-119.493-313.267-119.493-432.76,0c-119.493,119.493-119.493,313.267,0,432.76
		c119.493,119.493,313.267,119.493,432.76,0C641.873,402.888,641.873,209.113,522.38,89.62z M468.295,468.295
		c-89.62,89.619-234.932,89.619-324.551,0c-89.62-89.62-89.62-234.932,0-324.551c89.62-89.62,234.931-89.62,324.551,0
		C557.914,233.363,557.914,378.637,468.295,468.295z"/>
</g>
</svg>
</button>
</p>
	
	
<section class="vitrineDestaquinho container">
	<ul class="vitrineDestaquinho-lista">
		<c:forEach items="${produtos }" var="produto">
		<li class="livroNaVitrine vitrineDestaquinho-produto">
			<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build()}" class="livroNaVitrine-link" title="${produto.titulo}">
			    <div class="livroNaVitrine-imagemContainer" role="presentation">
				<img class="livroNaVitrine-imagem " src="//cdn.shopify.com/s/files/1/0155/7645/products/Etu3wiG3JfYmXCSDHyZNeuIRALuu935zHiDkUwJu1zc_large.jpg?v=1521829030" alt="${produto.titulo}" title="${produto.titulo}">
				
				</div>
				<span class="livroNaVitrine-nome">
					
				${produto.titulo}
			
				</span>
			</a>
		</li>
		</c:forEach>
	</ul>
</section>
</main>
</tags:pageTemplate>	
	<%@include file="/WEB-INF/views/rodape.jsp" %>
</body>
</html>
