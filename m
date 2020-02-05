Return-Path: <linux-ntb+bncBCHK3VHCYUIBB3OK5PYQKGQEPWZONDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B6C1534BB
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:26 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id c67sf2913818pje.1
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918125; cv=pass;
        d=google.com; s=arc-20160816;
        b=zRE5rLr35i4k3ZcJcmlQtqQXU4zx+u2GGfFgYo/onflXkbRVXuIQo4kC50hd/6oEhG
         FU2FMd/Bo/mp9RsROwfuviLzq096v1tXNKA0YZcxlGuXsa8EkRvhOmiQwYdIx9u7s+fu
         wE8vua61I1hVCbfqJWqmmltav1IOLqEJPCKSP2y1ke/EObg8v7LZo54bVY9MJrRpmcAg
         fVCqFwyurASG8f1qSIquvxWHYx4GNeIuCXq/esGb4uo9e+lhSKDWme83InkuYF0m4Yv9
         n/slxssvXDERHr5TNRoMi/se5NpyeDeuWN9nBIn4Ft5RTK28Qpt/YyX0s04F5J88SQpX
         smTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=Ehdwz2qW0ZR6v8YZSEzsA80L9U4s0h8OqObLXLIQJrs=;
        b=hiV4aaeC4BqoP7PV3+Wf+vDaqT7W2QsRPDGGwYPo6GjsYQHIt/EsbweJC6dxXlsQLl
         CgPf9PIRgHg3VfUhpbeDmcXpfDqY7AyAWG2QFt9Q9m8zTcx4dnaqLY9Glgj/nK25dlfu
         VS1A6uEQFe/UpqaS6X0cnFlLP/53y/mgtgFgH82whobm4YcVQB9vt9f+hPqVB+OhxM8V
         JKN03lGEyhnso7T5NRF8S6iKjQs4Pd+Q0pUnXVGQCNMaRo7qTV1NqYGMRQ1RbZJrKQzg
         kFYYHB5EuVaf5TcBPYWWjZFP9vQJrxETjqDopXSspHfh4xxxxXjiq81MYDDQzRtPRNJU
         kndA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMa4T+ws;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ehdwz2qW0ZR6v8YZSEzsA80L9U4s0h8OqObLXLIQJrs=;
        b=XQCICWq5ebOu4KWlWq4+T0y8fEAMXgmC2AE3uzRMyh4S5zWAI7npAqz31lHSpIgK0A
         IAwr5KfwQAV8pz7DMWq0BZZC5PLleDgn637XLkxOx6AnRmwHp88QgX8IWRgOnQq0f73R
         iKePSbuK8Xwg6TT+gIJS/gq5c1rn1lwh1jTUtml2hTQ/pCacCbpb+8HsDqJaFcmLMk5h
         F5bw49k76NYv/VxFIGj8s1voNAPVe4hQ2dc3hEzFr6mAlRVN0jXUPNDRYNgzXT1B2Ye7
         Eb771O7ZPoVg3QQXY+8069ptRMr7+iujASB0olZ2voEJMgVbTEsdTpXroC621OIWxSk0
         Ff4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ehdwz2qW0ZR6v8YZSEzsA80L9U4s0h8OqObLXLIQJrs=;
        b=B7qr5ur4BJLc39LqXrtTeRLVZIOvxfF7niebvWHlY9TsTHJ8mzwL/4InBk4NGSCNyZ
         /tgqV9aO7/oB+e2GsZZ+WY8x12/91Nm7c415w0VakXzr9qY7AKaBSH95NoQ3vi9RdMLp
         XWvuYMviJG6jSMsW+bVTLLjLHvur+fPG3MnUsk4ikFIqcmZHk5Mw4SaCwsxvL+0688p9
         nYo2gLj7451PZDcbexTycMZTHajDiRY33fYJXXc2b5wCfia9Uae/8mebWR5aPqpp2di9
         2K1eHW78S0zHMZRO2ZBtK91A20ABvL7B7O3HV669TGGBuulcoTVDQaExTPgj0WF4wKrC
         VhdA==
X-Gm-Message-State: APjAAAW7E98sYI71JSixKxNKq4wEhhi4c5v8kcsTlmehiZE9bSDDx0fr
	SM0oxgqcqsQMJMkagGfk55k=
X-Google-Smtp-Source: APXvYqy9Io83zrCkbeCHxFwMS/oEc6Ti0lotjWk0aoY/n9YtLuOOZN8dFrjzfboW0Z5G4zo8EHg5ag==
X-Received: by 2002:a17:902:fe10:: with SMTP id g16mr35416283plj.93.1580918125199;
        Wed, 05 Feb 2020 07:55:25 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b586:: with SMTP id a6ls1310801pls.0.gmail; Wed, 05
 Feb 2020 07:55:24 -0800 (PST)
X-Received: by 2002:a17:90a:3243:: with SMTP id k61mr6497768pjb.43.1580918124612;
        Wed, 05 Feb 2020 07:55:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918124; cv=none;
        d=google.com; s=arc-20160816;
        b=A2/Vfpg52I9yN2OZi3n67rMsFbAALrdDfhzPFp70oDwvpzZ8vBqiy4430A7LYxmZwM
         g1013jNyaDRFnHK1pIldXRohs2y79XSfl+V9p8ZLAYTOn8GeSbTfpRZT1W8dEdGT5wK0
         IRSmf2otaVwGhHvGhrIi5vFAJxniecEseMux5SemDjQnCgK/tAk3Tbcarzl9lTyHeNEp
         HCVYhtreD+wHcuPa34KYz5B3PDa5tZMHrYVMvSp+g2ESwUoNcFR7aEtcaO3XYxxAOg8X
         JgBlBKPM7Oq8vSgHhUyi7TcZSrC1qYi5dkg3m5d2ZXm3wiFFx0MYo02aHy7Y8NN3tgIi
         AQ+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=u1cAZL9ccoEDbLGWKB9jm2v64PDcsO++iTOy4WtzRP0=;
        b=TNRTZ3wu934hixrClVCnTXgpBALlWlC38Q+WgtheZz47ElcZEswgM25+UbXglRJ1fP
         C8+9nz6TjtDPHF1L1fsczrE7McGmwOO/KMgYw11zly+g+FSe+Pmx8uzl+zjeu5GpQGn9
         uiDvFlHzMiuI8+bgVtoswGlTq8QajpDg9Va+PBf90nengAk8ACF8uUj1WMd2cTf9hNdP
         F9EyZ4nSwBTQkYGQ+nCxtnTEgkWGj1AHxZo7Ai3Wrd9X+VojyEwgxk35hsvm5ENoXXPJ
         nYTpYC7+78M7Ut2Nto6HNCEs01G6dZDa1r3ZmU18GdeYGGgfroDHH7R/IR1uFXhVSfYT
         jCqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JMa4T+ws;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id h2si365770pju.2.2020.02.05.07.55.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:24 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 185so1418845pfv.3
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:24 -0800 (PST)
X-Received: by 2002:aa7:8149:: with SMTP id d9mr35921404pfn.170.1580918124265;
        Wed, 05 Feb 2020 07:55:24 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:23 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Jiasen Lin <linjiasen@hygon.cn>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 12/15] NTB: return link up status correctly for PRI and SEC
Date: Wed,  5 Feb 2020 21:24:29 +0530
Message-Id: <542aee58e6c78f240da80b3de84f8fa0b88ae6ad.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JMa4T+ws;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

Since NTB connects two physically separate systems,
there can be scenarios where one system goes down
while the other one remains active. In case of NTB
primary, if the NTB secondary goes down, a Link-Down
event is received. For the NTB secondary, if the
NTB primary goes down, the PCIe hotplug mechanism
ensures that the driver on the secondary side is also
unloaded.

But there are other scenarios to consider as well,
when suppose the physical link remains active, but
the driver on primary or secondary side is loaded
or un-loaded.

When the driver is loaded, on either side, it sets
SIDE_READY bit(bit-1) of SIDE_INFO register. Similarly,
when the driver is un-loaded, it resets the same bit.

We consider the NTB link to be up and operational
only when the driver on both sides of link are loaded
and ready. But we also need to take account of
Link Up and Down events which signify the physical
link status. So amd_link_is_up() is modified to take
care of the above scenarios.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 64 ++++++++++++++++++++++++++++++---
 drivers/ntb/hw/amd/ntb_hw_amd.h |  1 +
 2 files changed, 60 insertions(+), 5 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index d4029d531466..8a9852343de6 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -245,12 +245,66 @@ static int amd_ntb_get_link_status(struct amd_ntb_dev *ndev)
 
 static int amd_link_is_up(struct amd_ntb_dev *ndev)
 {
-	if (!ndev->peer_sta)
-		return ndev->cntl_sta;
+	int ret;
+
+	/*
+	 * We consider the link to be up under two conditions:
+	 *
+	 *   - When a link-up event is received. This is indicated by
+	 *     AMD_LINK_UP_EVENT set in peer_sta.
+	 *   - When driver on both sides of the link have been loaded.
+	 *     This is indicated by bit 1 being set in the peer
+	 *     SIDEINFO register.
+	 *
+	 * This function should return 1 when the latter of the above
+	 * two conditions is true.
+	 *
+	 * Now consider the sequence of events - Link-Up event occurs,
+	 * then the peer side driver loads. In this case, we would have
+	 * received LINK_UP event and bit 1 of peer SIDEINFO is also
+	 * set. What happens now if the link goes down? Bit 1 of
+	 * peer SIDEINFO remains set, but LINK_DOWN bit is set in
+	 * peer_sta. So we should return 0 from this function. Not only
+	 * that, we clear bit 1 of peer SIDEINFO to 0, since the peer
+	 * side driver did not even get a chance to clear it before
+	 * the link went down. This can be the case of surprise link
+	 * removal.
+	 *
+	 * LINK_UP event will always occur before the peer side driver
+	 * gets loaded the very first time. So there can be a case when
+	 * the LINK_UP event has occurred, but the peer side driver hasn't
+	 * yet loaded. We return 0 in that case.
+	 *
+	 * There is also a special case when the primary side driver is
+	 * unloaded and then loaded again. Since there is no change in
+	 * the status of NTB secondary in this case, there is no Link-Up
+	 * or Link-Down notification received. We recognize this condition
+	 * with peer_sta being set to 0.
+	 *
+	 * If bit 1 of peer SIDEINFO register is not set, then we
+	 * simply return 0 irrespective of the link up or down status
+	 * set in peer_sta.
+	 */
+	ret = amd_poll_link(ndev);
+	if (ret) {
+		/*
+		 * We need to check the below only for NTB primary. For NTB
+		 * secondary, simply checking the result of PSIDE_INFO
+		 * register will suffice.
+		 */
+		if (ndev->ntb.topo == NTB_TOPO_PRI) {
+			if ((ndev->peer_sta & AMD_LINK_UP_EVENT) ||
+			    (ndev->peer_sta == 0))
+				return ret;
+			else if (ndev->peer_sta & AMD_LINK_DOWN_EVENT) {
+				/* Clear peer sideinfo register */
+				amd_clear_side_info_reg(ndev, true);
 
-	if (ndev->peer_sta & AMD_LINK_UP_EVENT) {
-		ndev->peer_sta = 0;
-		return 1;
+				return 0;
+			}
+		} else { /* NTB_TOPO_SEC */
+			return ret;
+		}
 	}
 
 	return 0;
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 62ffdf35b683..73959c0b9972 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -217,5 +217,6 @@ struct amd_ntb_dev {
 
 static void amd_set_side_info_reg(struct amd_ntb_dev *ndev, bool peer);
 static void amd_clear_side_info_reg(struct amd_ntb_dev *ndev, bool peer);
+static int amd_poll_link(struct amd_ntb_dev *ndev);
 
 #endif
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/542aee58e6c78f240da80b3de84f8fa0b88ae6ad.1580914232.git.arindam.nath%40amd.com.
