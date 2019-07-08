Return-Path: <linux-ntb+bncBDE55XUH3UHRBDUGSDUQKGQEZPMWBSQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 233B062E6F
	for <lists+linux-ntb@lfdr.de>; Tue,  9 Jul 2019 04:59:27 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id t196sf18182561qke.0
        for <lists+linux-ntb@lfdr.de>; Mon, 08 Jul 2019 19:59:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562641166; cv=pass;
        d=google.com; s=arc-20160816;
        b=pG517tR0BlfKkm4ylI21IaDCC0koPoEj4s24ApvpEDUVAscvhlYc2w20t0TX/xfsFC
         rJPB7nUjI95N/ltAwUxeW6uD0MrBBz5+aQj3dk4OhuF8FCUoSNfe5xbHNErh/3MSfkBR
         bHjtBhkbMtfswWiVX1v2IteoVWoU86cgWsidP41zJjWY94EHz3a63C0K9Cnm9FMc3mBP
         +x6bXgaeq2CNPo2jeW8KtBDtGdcbme569C7fxGbYtkzp5zxwpM3Fh3bqYz1p1qy1jA9e
         /kjRUsoPViS53io4xhS/BcrX5tTfkb0XyqEDl3SGMHsIJyp0NKWCrSPeqG7TtBnp9FHu
         DOeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fvyPhm/MD0YY3lzjHXhLQ4fWayZpj3mpxgs+96Lc5/A=;
        b=sWdrXAXavYXad46nmGGh8EHbIGQm9KNgktJlJzRkP3YtyKrmGB/ybrzJOJ8mHzoSm3
         VrKI4ncCkatlwq9MylhattL6HW7h49E7crUlbvwFftgJU2g+JiS0aAJ9sn6r5U1WXjDp
         lCcVZCokEvWaTJ/auuvYPjrKmY+bPSikMKgNRhm/f04D61vN7NXsY/zS13f2cDWTwtCH
         cFTbxn03bHbLbTzMuf7o4bhpr2fNsU2v5EtvCXZO30I/Goz13VRHIJvxN4ERywoypSH3
         Qmi3ocdSfI0P6nk/ph1YWt3RImzWzht/7KhlcMjxV4h6d7EN6RpF1DlB5xrbZhu57OJ6
         M8Sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning fomichev.ru@gmail.com does not designate 89.207.88.249 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fvyPhm/MD0YY3lzjHXhLQ4fWayZpj3mpxgs+96Lc5/A=;
        b=Ymo1dxvgiedYWwKeY+b8N3uLuSyJp66g82peeJuoxzDMp/dEoCUoENKl93UDAJA9yI
         ZZU3xTo4Ut9U9svcXNoU6NQ3PgrfKoyClo7WbGxPps5KDK/u1tVMC6vAtYodcrgbTbvv
         YQhB7xhBEx2E01UhnOvetkvkjX8oosIcUKwBN2pMim14wjr4SJdaO1OUugyOCn5zQKlh
         kRqfjSH2LPtwHhzZAY+1tUYzptFC/X2C2DwqYg0dsHYnCOJhjLpPU6LWdkgL7XX/akFj
         Z6L7Aj7bHG8kyOz6CF3Egd6JQIt5xNgPuGiWeav98iquH6ETsa8GsqUgfqR8nRvi1Epw
         1RyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fvyPhm/MD0YY3lzjHXhLQ4fWayZpj3mpxgs+96Lc5/A=;
        b=gglbqi2uiFCaFEFh/5vkY1cgXjyPVj7KgRvl5ufz5uJjJijgkqU/gZbTgF+UXO/AJY
         JHuRkmVSjNjEwFythQ9b6gz0ecspj1rKR01hBn9S/6QsAIOJ7cmst/J+yYVsC0ewghcx
         hw7HrOOISvkOcAVz/tkGBZQSvSVqAPxYL6+ZfFJ6Z9bev/50MSx9/Ole0Znv5a5cYe63
         n48bCl5v0/LBuyqzWSxNpNBKTeJTEBoitBOGaDT6voBbHG2nQ/3a5eCXxqQQQOtiXEtT
         gCyC+oMt6aRGUtS8umY7Vs+xZqRgQgxWajH3SRVd9upnh2COLH7xQ0YzAV8dTrgSoM44
         8QBw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUv2XBCRBdWQRPP29nYhEnD4Kkdu4uz3LpDufyl5ZX41fDBkJc6
	Litwex9IFzoLQxNgRi0GJ04=
X-Google-Smtp-Source: APXvYqyEK8UTcNd2X50HevQe29JyyxlR+pfwetiYB3xsAUor7OB5VnEQiXHTL2LlWG2+T+jpDoCRKA==
X-Received: by 2002:a37:6248:: with SMTP id w69mr12280416qkb.225.1562641166058;
        Mon, 08 Jul 2019 19:59:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:a297:: with SMTP id l145ls2294476qke.12.gmail; Mon, 08
 Jul 2019 19:59:25 -0700 (PDT)
X-Received: by 2002:a37:3c9:: with SMTP id 192mr16763299qkd.37.1562641165942;
        Mon, 08 Jul 2019 19:59:25 -0700 (PDT)
Received: by 2002:ae9:e016:0:0:0:0:0 with SMTP id m22msqkk;
        Mon, 8 Jul 2019 06:17:23 -0700 (PDT)
X-Received: by 2002:a17:906:1281:: with SMTP id k1mr16689469ejb.212.1562591842545;
        Mon, 08 Jul 2019 06:17:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562591842; cv=none;
        d=google.com; s=arc-20160816;
        b=Gx6DhlWwXtiU2zDxm00/NYDsDhSXyWHhjwgM0kF7YDzQ77BA8aZqw5F/aG1tVhUuzI
         +i440pKij+t+FshbA6LEq1ZJWrDX0sJFg7Fru1kFEVicG0Qkcp20e2axX7+jEOeBHNwa
         YlODttkW276H4A3MD2OT3I71HXamG6dVlSIjDYdxsbEy6nSgPBhk+FIo52X4rVWAs8I+
         xD8U555pru2I6ncPke5cjVLhT5Rt5x+B4Y0Nlvh3F4LS6n3wkC+rXtMprNPjhe7guvpZ
         JEICu6JZGwk1em6cWA6OHFAsoGNDNcP1rmudAXKo5GGaYlw25ClAAAtCkPPVYf1UpE06
         xQxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=rpr/J1vT+MuENIT2YaR4uZfdSN3svPx48FymuHxIG3s=;
        b=RnZA6PNmAuLtRozrcI7RSkQs9F4z//2RMAhjwwnuryUI7n54JoqTnmyunXVQV7aEC6
         GhMpJYm9spojus8vdte7Jb/KasP7OtKBrp8CnigC+GKgqCopTeA4UdLJUyELIDsVQWSK
         lVP7Yt7RX4Pn8AyK9/Tz9WoNg4KhSHJo7NxzLzjS0c1ybkHYgBGW3EDts0o7ZRw8DdTD
         PRjVo6i3yGLEDB7FTqWKmoBrbwxrszTLM9Bjd7d075tcHjw5ohDeJXgTpJr3bnYhdSWN
         unJxkmzCOqujKYzvRlp2HI2vavtQIcJzCJGIh028EfXkTbm7m8gkuobyB9YQSQFnKAEZ
         gxkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=softfail (google.com: domain of transitioning fomichev.ru@gmail.com does not designate 89.207.88.249 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from alfbook-pro.local ([89.207.88.249])
        by gmr-mx.google.com with ESMTP id s30si640733eda.4.2019.07.08.06.17.22
        for <linux-ntb@googlegroups.com>;
        Mon, 08 Jul 2019 06:17:22 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning fomichev.ru@gmail.com does not designate 89.207.88.249 as permitted sender) client-ip=89.207.88.249;
Received: by alfbook-pro.local (Postfix, from userid 501)
	id CFA8A2006537A9; Mon,  8 Jul 2019 16:17:20 +0300 (MSK)
Date: Mon, 8 Jul 2019 16:17:20 +0300
From: Alexander Fomichev <fomichev.ru@gmail.com>
To: linux-ntb@googlegroups.com
Cc: linux@yadro.com
Subject: [PATCH] ntb_hw_switchtec: Fix ntb_mw_clear_trans returning error if
 size == 0
Message-ID: <20190708131720.z4tt2a2hofpbl4dc@alfbook-pro.local>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-Original-Sender: fomichev.ru@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=softfail
 (google.com: domain of transitioning fomichev.ru@gmail.com does not designate
 89.207.88.249 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

ntb_mw_set_trans should work as ntb_mw_clear_trans when size == 0 and/or
addr == 0. But error in xlate_pos checking condition prevents this.
Fix the condition to make ntb_mw_clear_trans working.
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 1e2f627d3bac..19d46af19650 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -299,7 +299,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
 	if (widx >= switchtec_ntb_mw_count(ntb, pidx))
 		return -EINVAL;
 
-	if (xlate_pos < 12)
+	if (size != 0 && xlate_pos < 12)
 		return -EINVAL;
 
 	if (!IS_ALIGNED(addr, BIT_ULL(xlate_pos))) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190708131720.z4tt2a2hofpbl4dc%40alfbook-pro.local.
For more options, visit https://groups.google.com/d/optout.
