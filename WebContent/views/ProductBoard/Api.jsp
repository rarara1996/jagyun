<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
	<script>
		var IMP = window.IMP; // 생략가능
		IMP.init('imp20522573'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

		IMP.request_pay({
			pg : 'inicis', // version 1.1.0부터 지원. 이건 어떤 방식으로 결제를 할것인지가 들어감
			pay_method : 'card',
			merchant_uid : 'merchant_' + new Date().getTime(),
			name : '주문명:결제테스트',
			amount : 14000,//Product에서 가격 가져와야함
			buyer_email : 'iamport@siot.do',//User에서 구매자  이메일 가져와야함
			buyer_name : '구매자이름',//User에서 구매자 이름 가져와야함
			buyer_tel : '010-1234-5678',//User에서 구매자 폰번호 가져와야함
			buyer_addr : '서울특별시 강남구 삼성동',//ProductBoard 에서 구매자 주소 가져옴
			buyer_postcode : '123-456', //ProductBoard 에서 구매자 주소 가져옴
			m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '고유ID : ' + rsp.imp_uid;
				msg += '상점 거래ID : ' + rsp.merchant_uid;
				msg += '결제 금액 : ' + rsp.paid_amount;
				msg += '카드 승인번호 : ' + rsp.apply_num;
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
				location.href="ProductBuy.jsp";
			}
			alert(msg);
		});
	</script>
</body>
</html>