<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公司简介</title>
    
     <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="static/css/Bootstrap/bootstrap.min.css" rel="stylesheet">

	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="static/css/Bootstrap/bootstrap-theme.min.css"></script>

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="static/jQuery/jquery-3.3.1.min.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="static/js/Bootstrap/bootstrap.min.js"></script>
		
	<link rel="stylesheet" type="text/css" href="static/css/user/header-footer.css">
	
  </head>
  
  <body>
    <div class="header">
		<jsp:include page="header.jsp"></jsp:include>
    </div>
		
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 column">
					<ol class="breadcrumb">
						<li><a href="#">首页</a></li>
						<li class="active">公司简介</li>
						<!-- <li><a href="#" >人事管理</a></li>
							<li class="active">任正非简介</li> -->
					</ol>
				</div>

				<h2 class="text-center">华为技术有限公司</h2>
				<div class="s_content col-md-12 col-sm-12 column" id="s_content">
					<!-- <div class="col-md-5 col-sm-5 col-md-offset-1 column "> -->
						<div class="content_information">
							
							<span class="text-center text-justify">
								<p>
									<img class="img-responsive center-block pull-right" style=" width: 410px;padding-left: 45px;height: 250px;padding-top: 0px;margin-top: 15px;padding-right: 0px;margin-right: 25px;" src="static/images/enterprise/huaweiEnglishIntrodition.jpg" />
								</p>
								<p class="lead">
									&nbsp;&nbsp;&nbsp;&nbsp;华为是全球领先的ICT（信息与通信）基础设施和智能终端提供商，
									致力于把数字世界带入每个人、每个家庭、每个组织，构建万物互联的智能世界。我们在通信网络、IT、智能终端和
									云服务等领域为客户提供有竞争力、安全可信赖的产品、解决方案与服务，与生态伙伴开放合作，持续为客户创造价值，
									释放个人潜能，丰富家庭生活，激发组织创新。华为坚持围绕客户需求持续创新，加大基础研究投入，厚积薄发，推动世界进步。
									华为成立于1987年，是一家由员工持有全部股份的民营企业，目前有18万员工，业务遍及170多个国家和地区。
								</p>
								
							</span>
						<!-- </div> -->
					</div>

					<!-- <div class="col-md-6 col-sm-6  column" style="margin-top: 3%;">
						<span>
							<img class="img-responsive center-block" src="images/enterpriseIntrodition/huaweiEnglishIntrodition.jpg" />
						</span>

					</div> -->

				</div>

				<div class="col-md-12 col-sm-12 column" id="our_rule_introdition">
					<div class="otherintrodition">
						<h2>我们为世界带来了什么？</h2>
						<span class="our_rule">
							<p class="lead">
								<strong>为客户创造价值。</strong>
								华为和运营商一起，在全球建设了1,500多张网络，帮助世界超过三分之一的人口实现联接。华为携手合作伙伴，为政府及公共事业机构，金融、能源、交通、制造等企业客户，提供开放、灵活、安全的端管云协同ICT基础设施平台，推动行业数字化转型；为云服务客户提供稳定可靠、安全可信和可持续演进的云服务。华为智能终端和智能手机，正在帮助人们享受高品质的数字工作、生活和娱乐体验。
							</p>
							<p class="lead">
								<strong>推动产业良性发展。</strong>
								华为主张开放、合作、共赢，与客户合作伙伴及友商合作创新、扩大产业价值，形成健康良性的产业生态系统。华为加入360多个标准组织、产业联盟和开源社区，积极参与和支持主流标准的制定、构建共赢的生态圈。我们面向云计算、NFV/SDN、5G等新兴热点领域，与产业伙伴分工协作，推动产业持续良性发展。
							</p>
							<p class="lead">
								<strong>促进经济增长。</strong>
								华为不仅为所在国家带来直接的税收贡献，促进当地就业，形成产业链带动效应，更重要的是通过创新的ICT解决方案打造数字化引擎，推动各行各业数字化转型，促进经济增长，提升人们的生活质量与福祉。
							</p>
							<p class="lead">
								<strong> 推动社会可持续发展。</strong>作为负责任的企业公民，华为致力于消除全球数字鸿沟，在珠峰南坡和北极圈内，在西非埃博拉疫区、日本海啸核泄漏、中国汶川大地震等重大灾难现场，都有华为人的身影；推进绿色、低碳的环保理念，从产品规划、设计、研发、制造、交付以及运维，华为向客户提供领先的节能环保产品和解决方案；华为“未来种子”项目已经覆盖108个国家和地区，帮助培养本地ICT人才，推动知识迁移，提升人们对于ICT行业的了解和兴趣，并鼓励各国家及地区参与到建设数字化社区的工作中。
							</p>
							<p class="lead">
								<strong>为奋斗者提供舞台。</strong>
								华为坚持“以奋斗者为本”，以责任贡献来评价员工和选拔干部，为员工提供了全球化发展平台、与世界对话的机会，使大量年轻人有机会担当重任，快速成长，也使得十几万员工通过个人的努力，收获了合理的回报与值得回味的人生经历。
							</p>
						</span>
						<h2>我们坚持什么？</h2>
						<span>
							<p class="lead">
								华为30年坚持聚焦在主航道，抵制一切诱惑；坚持不走捷径，拒绝机会主义，踏踏实实，长期投入，厚积薄发；坚持以客户为中心，以奋斗者为本，长期艰苦奋斗，坚持自我批判。
							</p>
							<p class="lead">
								我们不会辜负时代慷慨赋予我们的历史性机遇，为构建万物互联的智能世界，一往无前。
							</p>
						</span>
					</div>
				</div>
			</div>
		</div>
		
		
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	
  </body>
</html>
