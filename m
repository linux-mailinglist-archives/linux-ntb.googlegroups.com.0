Return-Path: <linux-ntb+bncBCOOP4VF5IDRBOXEY75AKGQEJRLCB6A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id F354725D2D7
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:52:27 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id c11sf4288114ilm.0
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:52:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205947; cv=pass;
        d=google.com; s=arc-20160816;
        b=eU/FmXwvtuA/btW14kfsvi9JBa5cVIBaxOaANvcPUwU+4WUUCSPdKKobosdsMkOTav
         InQS1vSca9imaDMWapMuJ1lQkBhEYcBGj7yuZtCxkVgFSkh2vHxbJC3Y0Xc2kZ0z9FGX
         ux9uVQBGt2Ukx4KaeQprSbInJy1QjW9WR/OVl8Xpw4dAJspWy3jfE5UwW86BRmrobHQO
         Lh5x658q3OOGa9595Q6uA+9w0pWZodP5lnqyJzUhTeyTcVpQCWwwORPiZPhZbobVaJjC
         OK2owcRBc7Kdo4PnoRogteSBlsPwMVHMyDppcMcyTsEx0M6WEgfCjB6pJcyG3KYYefph
         b7hA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=YPomj+texlPck7WmPT5k2Daf0udIqH5yQKJ6rPe8zqU=;
        b=Y6ZamRv9PQ7DLx9eACJarMmbVkW+fNHp2F9nBoXuSZmI8dOSD3w9INhrLcmSWcSdTu
         SRJ4rjFnQtp4+K/m73eQ7UmLjSsS6NNQc89GHyseJrhH9pQgs2rdKpKJ8FIaNopGgMp9
         wGS9FSCX+CV1NjpugHWWmdm6PWZGofxuwrwytOkoJKPZaWe21z+DnoYnxPJfmTwcGL2A
         5tfc98m2SDqghQH4tqIdyVfYFBjkEZiQhCxlxAsqI+wCHCQUV80vsVBnSMXXQjVlRWG4
         u6l4uvOuATPtskIZNn2GUCwZ3jYKzxYVxxy0BPAJE8XgnLZZid52dr+RKn60R4UCHkf/
         e0/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=t7EdgUIx;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YPomj+texlPck7WmPT5k2Daf0udIqH5yQKJ6rPe8zqU=;
        b=WrmLThrz9ytU+FF82joqLrBko/tH70pcB3w5XseEsx4FeFrHMF9GjU35kiGjuJuENu
         BUSTvRhxUiF9svIZkgCsOmbSZRMw/6ewxIsnPXXDGxpERIw2hRaMEj+PsTZvkvkGV2Ml
         Q3zLyBQKBRiyQ0L0D0047CYKG1teTajIcqB4zC8u/jm/3K3s3I61tbscAV7IuhE8b+x+
         JMD3dviOnUpCzgC1Is2OjrjhIUfx3jESOg6v4oZaRQyHPGZ9dL4DEOjF2oAKGXyZ78KW
         FQqE91cSZA+o2ci684VNscDHBu5eagcBgHN2D77FE+qekKHo6CYwhGn8Yu2F5QpCTjsJ
         hJ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YPomj+texlPck7WmPT5k2Daf0udIqH5yQKJ6rPe8zqU=;
        b=nLTNPXjOH7PKlv2ggvQyKNc2z1YC9p1egrwuZvvuXkRCNr5Va2aBB7nE5+6teuFbYB
         XiJAbOvVfXhMNOsgSy1NB2mQKdjf29lS3X1CLrJBWCtH3Xtp0GCPqeeVEHCTODNy4B+p
         LsAph23TTiAOT6dTLpHDi3vNt0RazMG8AiRmhYbnGWqJbXSS/J12S8InNDbyTJcTQGHZ
         6u9ijJxXzv/N1FZLDlNdx/iQ/nEjnlTWpMxD2dx3FBwquGjUNTYUWavALdGoaNjgPZ8U
         jy6kDqRD5Asc/SbfyuTG1D/tJ9V5aKWPvoNgnGOdeTqdbXDFBRwDe1l1Z4h6f6zoafGl
         xa0A==
X-Gm-Message-State: AOAM532l6xbD2s5VE3G3sHwctTn5ShBeA1qnXffhOkeg/DLBXThxI15I
	E//T038/WgG+BQzc9Y3v24U=
X-Google-Smtp-Source: ABdhPJw36gR5jtlaUX3kvKto5CpjfaImCUPAeWal2qta7VetxfmaaQ2ie7iW9qYyxkZJkDKggvEWUw==
X-Received: by 2002:a92:c851:: with SMTP id b17mr7175772ilq.26.1599205946985;
        Fri, 04 Sep 2020 00:52:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:1941:: with SMTP id e1ls2148447ilm.3.gmail; Fri, 04 Sep
 2020 00:52:26 -0700 (PDT)
X-Received: by 2002:a92:8709:: with SMTP id m9mr7261896ild.242.1599205946712;
        Fri, 04 Sep 2020 00:52:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205946; cv=none;
        d=google.com; s=arc-20160816;
        b=c9+l6ZaGyFT7UDc6aqqgsFstK+a44TnS5eiZHQvaxO4yL8ZDyUvxC+p6k+Rr0iC6l5
         mPUOjLouzI/qhR3rVLl0WnHAl9ox7k1I5bqm2AyBYVnFae2tBJf7cO+YUWtuGKe2EQIE
         7KQ2m1+PyW82oYdDmPRDdxgHUIGBdtLn+PEBbyZncjB4LjD9GMpB+s3GIu5AI+ytIyzS
         wIP2CJmS5ktG8oDKx+ny7qCP5iDu7YX9eW+QRtUuTt4h4goyKF7El6vfTLcHCrekKMid
         8TU82dkhlZsVO42zwxz1fXL+V2teI0882FiGsNh2FVyRewvDoVP8GMCt7gc+FLNQfuxP
         8ePw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PSR7JL4HaqO9swLj/T2R0uAkZr/feSQH9xlHyklOXq0=;
        b=iyd3kxKcV/S+u77Hb2A+6W9QbLBDnhoma95xH1qwq+kdwUE0QQ52zmZ+SgXcrbndYz
         IPH2m1NErvDtGMfU0qcbjhezHDRjdL28lSC88i/rbLMsF2dpV0QWRf50JqWDPSGa2uzB
         kshKhJHKckmpwcV8i31Jatid0RSnDqfJrSfV9POoOnyFTQAd5GZ7ui3eXP37fQPFHysK
         jkIJlWtNxPbqr/kNPNAYzrCGzUsf+7otrimbg2aWQSmwNWPXIMh8hUkcnroonAAI42eN
         FA2b6DjaDXPXdaHMOrbAFocnFDzxRM9LxGIL/5rkAQZog8+fEP2dhVhU2ld0tXN01B8H
         Y3uQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=t7EdgUIx;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id h11si407312ilh.1.2020.09.04.00.52.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:52:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847qKm2090765;
	Fri, 4 Sep 2020 02:52:20 -0500
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847qKv2027201
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:52:20 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:52:19 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:52:19 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osNG058796;
	Fri, 4 Sep 2020 02:52:14 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob
 Herring <robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: [PATCH v3 15/17] NTB: tool: Enable the NTB/PCIe link on the local or remote side of bridge
Date: Fri, 4 Sep 2020 13:20:50 +0530
Message-ID: <20200904075052.8911-16-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=t7EdgUIx;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Invoke ntb_link_enable() to enable the NTB/PCIe link on the local
or remote side of the bridge.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/ntb/test/ntb_tool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index b7bf3f863d79..8230ced503e3 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -1638,6 +1638,7 @@ static int tool_probe(struct ntb_client *self, struct ntb_dev *ntb)
 
 	tool_setup_dbgfs(tc);
 
+	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 	return 0;
 
 err_clear_mws:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-16-kishon%40ti.com.
