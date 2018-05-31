<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ include file="/WEB-INF/views/cabecalho.jsp" %>
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
	
	
<div class="buscaDoRodape container" role="presentation">
	<form role="search"
		  aria-labelledby="rotuloBuscaDoRodape"
		  action="/search"
		  method="GET"
		  class="buscaDoRodape-formulario"
	>
		<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido" for="campoBuscaRodape">Busque por autor, tí­tulo, conteúdo...</label>
		<label class="buscaDoRodape-rotulo" for="campoBuscaRodape">Não encontrou o seu livro?</label>
		<fieldset class="buscaDoRodape-fieldset">
			<input type="hidden" name="type" value="product">
			<input id="campoBuscaRodape"
				   class="buscaDoRodape-campo"
				   placeholder="Busque por autor, tí­tulo, conteúdo..."
				   type="search"
				   name="q"
				   required
				   aria-required
			>
			<button class="buscaDoRodape-enviar" type="submit">
				Buscar
			</button>
		</fieldset>
	</form>
</div>
	</main>
	<footer class="rodape">
	<div class="container" role="presentation">
		<div class="rodape-conteudo" role="presentation">
			<section class="rodape-secao rodape-voltarTopo">
				<a class="rodape-logo" href="#" title="Voltar ao topo da pí¡gina">
				<img src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/logo-footer.svg?4392049528352633980" alt="altLogoFooter"/>
				</a>
			</section>
			<section class="rodape-secao rodape-secaoLinks">
				<h3 class="rodape-titulo">Links da <div role="presentation" class="rodape-titulo-espacador"></div>Casa do Código</h3>
				<ul>
					<li class="rodape-item">
						<a href="https://biblioteca.casadocodigo.com.br/" class="rodape-itemLink rodape-itemLink--meusEbooks">
							Meus ebooks
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/sobre-a-casa-do-codigo"  >
							Sobre a Casa do Código
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://suporte.casadocodigo.com.br/"  >
							Perguntas frequentes
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/quero-ser-um-autor"  >
							Quero ser um autor
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.caelum.com.br/"  target="_blank">
							Caelum Ensino e Inovação
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="https://www.casadocodigo.com.br/pages/politica-de-privacidade" rel="nofollow" >
							Polí­tica de Privacidade
						</a>
					</li>
					
				</ul>
				<h3 class="rodape-titulo">Nas redes sociais</h3>
				<ul>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-facebook" href="http://www.facebook.com/casadocodigo" rel="nofollow" title="Casa do Código no Facebook" rel="nofollow" target="_blank">/CasaDoCodigo</a>
					</li>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-twitter" href="http://www.twitter.com/casadocodigo" rel="nofollow" title="Casa do Código no Twitter" rel="nofollow" target="_blank">@casadocodigo</a>
					</li>
				</ul>
			</section><!--

		 --><section class="rodape-secao rodape-secaoOutros">
				<h3 class="rodape-titulo">Receba novidades e lançamentos</h3>
				<form class="rodape-formularioDaNewsletter" action="https://docs.google.com/forms/d/e/1FAIpQLSfLN8GYzRsSSdXVofZZkx-L7mXZVv0CrtJRhI2qKzf8sqVT2g/formResponse" method="POST">
					<input type="hidden" name="pageNumber" value="0">
					<input type="hidden" name="backupCache" value="">
					<input class="rodape-campoDaNewsletter" type="email" name="entry.1000000" value="" id="entry_0" placeholder="seu@email.com"><!--
				 --><button class="rodape-botaoDaNewsletter" type="submit" name="submit" id="submit-newsletter">ok</button>
				</form>

				<h3 class="rodape-titulo rodape-tituloSecundario">Este site aceita</h3>
				<ul>
					<li class="rodape-formaDePagamento">
						<img src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/pagseguro.png?4392049528352633980" border="0" alt="pag seguro"/>
					</li>
					<li class="rodape-formaDePagamento">
						<img src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/paypal.png?4392049528352633980" border="0" alt="paypal"/>
					</li>
				</ul>
			</section>
		</div>
	</div>
</footer>
<footer class="caelum-footer">
	<div class="grupoCaelum">
		<div class="container">
			<p class="grupoCaelum-title"><a href="http://www.caelum.com.br/grupo">Grupo Caelum</a></p>
			<ul class="grupoCaelum-list">
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Educação</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.caelum.com.br/grupo">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-caelum.svg?4392049528352633980">
								<span class="column-item-title">Caelum</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.casadocodigo.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-cdc.svg?4392049528352633980"><span class="column-item-title">Casa do Código</span>					
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Educação Online</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.alura.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-alura.svg?4392049528352633980#alura"><span class="column-item-title">Alura</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.alurastart.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-alurastart.svg?4392049528352633980"><span class="column-item-title">Alura Start</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.musicdot.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-musicdot.svg?4392049528352633980"><span class="column-item-title">MusicDot</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.aluralingua.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-aluralingua.svg?4392049528352633980"><span class="column-item-title">Alura Lí­ngua</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Comunidade</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://hipsters.tech">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-hipsters-pontotech.svg?4392049528352633980"><span class="column-item-title">Hipsters ponto Tech</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://hipsters.jobs">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-hipsters-jobs.svg?4392049528352633980"><span class="column-item-title">Hipsters ponto Jobs</span>
							</a>
						</li>				
						<li class="column-item">
							<a href="http://www.guj.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-guj.svg?4392049528352633980"><span class="column-item-title">GUJ</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Parceiros</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.imasters.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/footer-icon-imasters.svg?4392049528352633980"><span class="column-item-title">iMasters</span>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

</footer>

	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/trackExternalLinks.js?4392049528352633980"></script>
	
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/userreport.js?4392049528352633980"></script>
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/discount.js?4392049528352633980"></script>
	<script type="text/javascript" src="//cdn.shopify.com/s/files/1/0155/7645/t/232/assets/menu.js?4392049528352633980"></script>
</body>
</html>
