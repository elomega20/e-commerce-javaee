<%@include file="fichierEntete.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inscription</title>
<%@include file="/WEB-INF/jsp/link.jsp"%>
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet">
</head>
<body>
	<form method="post" action="<c:url value="/inscription"/>" >
		<div class="row">
			<div class="col-lg-4 col-md-4"></div>
			<div class="col-lg-4 col-md-4">
			    <c:if test="${ !empty erreurTechnique }">
				    <span style="color: red;"> <c:out value="${ erreurTechnique }"/></span>
				</c:if>
				<div id="connexion" style="margin-top: 60px;">
					<div style="padding-left: 70px;">
						<img id="id-logo-connexion" alt="mon logo"
							src="<c:url value="/STOCKAGE/images/logo.png"/>"
							style="width: 200px;" />
					</div>
					<div class="mb-3" style="padding-top: 30px;">
						<label for="exampleInputEmail1" class="form-label">Nom</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="nom">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Prenom</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="prenom">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Email</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="email">
						<c:if test="${ !empty erreurEmail }">
						    <span style="color: red;"> <c:out value="${ erreurEmail }"/></span>
						</c:if>
					</div>
					<div class="mb-3" style="padding-bottom: 10px;">
						<label for="exampleInputPassword1" class="form-label">Mot
							De Pass</label> <input type="password" class="form-control"
							id="exampleInputPassword1" name="motDePass">
					</div>

					<button type="submit" class="btn btn-primary"
						style="background-color: #F4672c; border-color: #F4672c;">Valider</button>
				</div>
			</div>
			<div class="col-lg-4 col-md-4"></div>
		</div>
	</form>

	<%@include file="/WEB-INF/jsp/linkScript.jsp"%>
</body>
</html>