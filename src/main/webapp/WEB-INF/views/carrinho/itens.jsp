<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Import da taglib -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>      
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ include file="/WEB-INF/views/cabecalho.jsp" %>

<main>
		<p class="destaqueDoCupom">
  Use o Código <strong class="destaqueDoCupom-codigo"></strong> e tenha <strong class="destaqueDoCupom-desconto">10%</strong> de desconto!
  <button class="destaqueDoCupom-remover" title="Remover banner" onclick="removeDiscountBanner()"><!--?xml version="1.0" encoding="iso-8859-1"?-->
<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->

<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="15px" height="15px" viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve">
<g>
	<path fill="#ffffff" d="M387.128,170.748L306,251.915l-81.128-81.167l-54.124,54.124L251.915,306l-81.128,81.128l54.085,54.086L306,360.086
		l81.128,81.128l54.086-54.086L360.086,306l81.128-81.128L387.128,170.748z M522.38,89.62
		c-119.493-119.493-313.267-119.493-432.76,0c-119.493,119.493-119.493,313.267,0,432.76
		c119.493,119.493,313.267,119.493,432.76,0C641.873,402.888,641.873,209.113,522.38,89.62z M468.295,468.295
		c-89.62,89.619-234.932,89.619-324.551,0c-89.62-89.62-89.62-234.932,0-324.551c89.62-89.62,234.931-89.62,324.551,0
		C557.914,233.363,557.914,378.637,468.295,468.295z"></path>
</g>
</svg>
</button>
</p>

		<section class="infoSection container">
	<h2 class="infoSection-titulo">Seu carrinho</h2>
	
	<table class="formularioDoCarrinho-tabela">
		<thead class="formularioDoCarrinho-cabecalho">
			<tr>
				<th></th>
				<th class="formularioDoCarrinho-cabecalho-item">Item</th>
				<th class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
				<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
				<th class="formularioDoCarrinho-cabecalho-item">Total</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${carrinhoCompras.itens}" var="item">
			<tr>
				<td class="formularioDoCarrinho-item">
					<a href="https://www.casadocodigo.com.br/products/livro-testes-de-software">
						<img class="formularioDoCarrinho-item-imagem" src="${pageContext.request.contextPath}/resources/imagens/testes-de-software-featured_small.png">
					</a>
				</td>
				<td class="formularioDoCarrinho-item">
					<h2 class="formularioDoCarrinho-item-titulo">${item.produto.titulo}</h2>
				</td>
				<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">${item.preco}</td>
				<td class="formularioDoCarrinho-item">
					<input class="formularioDoCarrinho-item-quantidade" type="number" min="0" id="quantidade" name="quantidade" value="${carrinhoCompras.getQuantidade(item)}">
				</td>
				<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal" title="Preço Total">${carrinhoCompras.getTotal(item)}</td>
				<td class="formularioDoCarrinho-item">
					
					<form:form servletRelativeAction="${s:mvcUrl('CCC#remover').arg(0,item.produto.id).arg(1, item.tipoPreco).build() }" method="post" cssClass="container">
						<input type="image" src="${pageContext.request.contextPath}/resources/imagens/trash.png" alt="Excluir" title="Excluir">
					</form:form>			
				</td>
			</tr>
		</c:forEach>
			
		</tbody>
		<tfoot class="formularioDoCarrinho-rodape">
			<tr>
				<td class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar" colspan="3">
					<form action="${s:mvcUrl('PC#finalizar').build() }" method="post">
						<button class="formularioDoCarrinho-finalizar-botao" type="submit" name="checkout">Finalizar<span class="formularioDoCarrinho-finalizar-botao-texto" role="presentation"> compra</span></button>
					</form>
				</td>
				<td class="formularioDoCarrinho-rodape-item">
					${carrinhoCompras.total }
				</td>
				<td></td>
			</tr>
		</tfoot>
	</table>
	
</section>



		<div class="buscaDoRodape container" role="presentation">
	<form role="search" aria-labelledby="rotuloBuscaDoRodape" action="https://www.casadocodigo.com.br/search" method="GET" class="buscaDoRodape-formulario">
		<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido" for="campoBuscaRodape">Busque por autor, tí­tulo, conteúdo...</label>
		<label class="buscaDoRodape-rotulo" for="campoBuscaRodape">Nío encontrou o seu livro?</label>
		<fieldset class="buscaDoRodape-fieldset">
			<input type="hidden" name="type" value="product">
			<input id="campoBuscaRodape" class="buscaDoRodape-campo" placeholder="Busque por autor, tí­tulo, conteúdo..." type="search" name="q" required="" aria-required="">
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
				<a class="rodape-logo" href="https://www.casadocodigo.com.br/cart#" title="Voltar ao topo da pí¡gina">
				<img src="${pageContext.request.contextPath}/resources/logo-footer.svg" alt="altLogoFooter">
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
						<a class="rodape-itemLink" href="https://www.casadocodigo.com.br/pages/sobre-a-casa-do-codigo">
							Sobre a Casa do Código
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://suporte.casadocodigo.com.br/">
							Perguntas frequentes
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="https://www.casadocodigo.com.br/pages/quero-ser-um-autor">
							Quero ser um autor
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.caelum.com.br/" target="_blank">
							Caelum Ensino e Inovaçío
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="https://www.casadocodigo.com.br/pages/politica-de-privacidade" rel="nofollow">
							Polí­tica de Privacidade
						</a>
					</li>
					
				</ul>
				<h3 class="rodape-titulo">Nas redes sociais</h3>
				<ul>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-facebook" href="http://www.facebook.com/casadocodigo" rel="nofollow" title="Casa do Código no Facebook" target="_blank">/CasaDoCodigo</a>
					</li>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-twitter" href="http://www.twitter.com/casadocodigo" rel="nofollow" title="Casa do Código no Twitter" target="_blank">@casadocodigo</a>
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
						<img src="${pageContext.request.contextPath}/resources/imagens/pagseguro.png" border="0" alt="pag seguro">
					</li>
					<li class="rodape-formaDePagamento">
						<img src="${pageContext.request.contextPath}/resources/imagens/paypal.png" border="0" alt="paypal">
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
					<p class="grupoCaelum-column-title">Educaçío</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.caelum.com.br/grupo">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-caelum.svg">
								<span class="column-item-title">Caelum</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.casadocodigo.com.br/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-cdc.svg"><span class="column-item-title">Casa do Código</span>					
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Educaçío Online</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.alura.com.br/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-alura.svg"><span class="column-item-title">Alura</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.alurastart.com.br/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-alurastart.svg"><span class="column-item-title">Alura Start</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.musicdot.com.br/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-musicdot.svg"><span class="column-item-title">MusicDot</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.aluralingua.com.br/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-aluralingua.svg"><span class="column-item-title">Alura Lí­ngua</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Comunidade</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://hipsters.tech/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-hipsters-pontotech.svg"><span class="column-item-title">Hipsters ponto Tech</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://hipsters.jobs/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-hipsters-jobs.svg"><span class="column-item-title">Hipsters ponto Jobs</span>
							</a>
						</li>				
						<li class="column-item">
							<a href="http://www.guj.com.br/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-guj.svg"><span class="column-item-title">GUJ</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Parceiros</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.imasters.com.br/">
								<img class="column-item-logo" src="${pageContext.request.contextPath}/resources/footer-icon-imasters.svg"><span class="column-item-title">iMasters</span>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

</footer>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/trackExternalLinks.js"></script>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/userreport(1).js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/discount.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/menu.js"></script>


<iframe src="${pageContext.request.contextPath}/resources/dialog.html" scrolling="no" tabindex="-1" aria-hidden="true" style="position: fixed; top: 0px; left: 0px; z-index: 99999; height: 0px; width: 0px; border: 0px;"></iframe><script src="${pageContext.request.contextPath}/resources/js/175abcd073ccafc00c.js"></script><div style="width: auto; height: auto; position: fixed; z-index: 1000000093; display: block; visibility: visible; overflow-x: hidden; pointer-events: all; bottom: 22%; left: 0px;"><iframe id="crowd-shortcut" name="crowd-shortcut" frameborder="0" scrolling="no" class="urp-no-hide" src="${pageContext.request.contextPath}/resources/saved_resource.html" style="max-width: none !important; width: 187px; display: block; height: 44px; margin-left: -143px; border-top-right-radius: 2px; border-bottom-right-radius: 2px; visibility: visible;" title="Toggle UserReport feedback forum"></iframe></div><script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lnkr5.min.js"></script><script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/lnkr30_nt.min.js"></script><script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/validate-site.js"></script></body></html>