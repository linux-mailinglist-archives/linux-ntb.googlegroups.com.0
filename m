Return-Path: <linux-ntb+bncBDV2D5O34IDRB5XW773QKGQEN5BTE3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFFE21438A
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:58 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id a4sf37413637edr.18
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834358; cv=pass;
        d=google.com; s=arc-20160816;
        b=KAF4urEjOnopP7y/yP6+EdNYBIp5QbtRy4xz6QWgO/XJMCcvUxdtDCbx6RTysqDeio
         mDpylpSqrROGUEwRiQNFT0WiK9Yd8Av8vCuhPV1Al1ys7O79uEzNmePZL3zwcZqFBwEb
         ob+u146nglancbC9HvZTEvxOUyT+cP3otwgeokrdwgiTKOXxaP8aplA+7U6W57AUWhD9
         LX0qa/z/37BXSIRPWLr0pKkmZ9ndrybg5jZ8R519K6nwtxgI+rQ0p0I1P+iIdP1rEZsc
         3oxuYfe9DBKTk84OKfZhMl3NK3CgJWPSkQqOK10iNCWDyaY6CegxgJWRei+Zph5pX9Rn
         gA7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=tK3ctMOgdrdumgEFdo6TTfbYeq+7OO/3zE/oIeAnBig=;
        b=pkRdkM1uSnpNRg4p4fsDGefzlbrT4AFGhznaZluY/glQLPrMNKaU/Kmjs2HOCl66MU
         YeN191ijJleGS59hsYbbUysr4hZz7UsO02neY4xoZN3Fl1pAFvIiCRyHeSakx6UU6ake
         0OEOnds1SKguX0qwB/qJdDyVumTtTAekKLBzgBPhMtJIWhB674/96lxKW1MEeL8a41Wc
         Wm5MrNvJHD03rP7GX+NtzyYFfw/ySGdWXwLoM1kvhNjE/J5opsAETYglzOdFXpYj+Pj1
         gURKEtkzzjm0DjtOnNYSssKeDkGuBMlkfMUIz6mg76KQqREftbvAEEgmjfQynJc2uEbI
         P3Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=XHH2ztO1;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tK3ctMOgdrdumgEFdo6TTfbYeq+7OO/3zE/oIeAnBig=;
        b=hkIFd9aKcbTYJBYjV4jq+hsi2MsqDoWLXlPPM0m0wtIMX0Kmu7jqAahUFTzGYEPbOE
         4dlcOFkw6aVMaZm42bZ4fsyYJNe727bFeNfjuxYmxeG6PRk3hrcenUGVcg2pTwdjkjLk
         kmdA8rD8yVbAam/eLojMUtUVW/fCQq7j/g75yJN+DHifMatXOT2ivitqhNOfPMmjiNSE
         QiqFnxNajUEfjlSFCpYTcPERxqlEvPfQaqKIa4GW9iky7YZCBHMLVkhIugQlI1LnCTTh
         +Z5zLns9JmVi8NxZZUGmGhw34CHh2q6t+8Swap2sXyYuYDcGm9bHdpZHm7cF95c94/pe
         KI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tK3ctMOgdrdumgEFdo6TTfbYeq+7OO/3zE/oIeAnBig=;
        b=i/mNJ3FVWCa3tMh+20NdIfGbDJdEWUHq2nn5DW+Xlp605wvpC4lcPzfcY4ak7mxCwT
         y5IRCkov+o5ghbYs74cqf+KNiHHQVP492FfgcRBwRr7JAWXHi9+qLbiHQ9djNeTRNyvo
         olnZ67QnoCVNDNoCrFfwmImZE7JQ7P3Kp5Qxxek5Hu3lRhdcBrbTABf83JTXAfwsHhEj
         3dyFMAKyP1GP2QHqf5pRxFGbu4yny3HR8weeiEus2CdyiXFtSS1D26CJ5dRh82hkgSDy
         j+tdTb95ouyiAX8Qaomi+SZ/8w74tzKfW4UXd5UHlv8n36MoviAiTw/mlnwmL9UA+52T
         RHdg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532UwKG8dXB1rdGa8Pcq/Pog3CyikUZ5M2WCAwifooNaSdE+dlAQ
	F9UkZ8yjtGjsotfKZH2/aZU=
X-Google-Smtp-Source: ABdhPJzRHW8WjDSdi2miJXFRwmahnUt73zLyre0TcnSMr58/iBU5sZDWCFvQeMbteRzvHg+uhMorMg==
X-Received: by 2002:a17:906:8542:: with SMTP id h2mr34188045ejy.517.1593834358338;
        Fri, 03 Jul 2020 20:45:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:b2cd:: with SMTP id cf13ls1064760ejb.10.gmail; Fri,
 03 Jul 2020 20:45:57 -0700 (PDT)
X-Received: by 2002:a17:906:2581:: with SMTP id m1mr37276029ejb.89.1593834357835;
        Fri, 03 Jul 2020 20:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834357; cv=none;
        d=google.com; s=arc-20160816;
        b=UdbVhXuvwfuTjQZ4qAdlP3Wz0Ok/W/hBeqvc6p2XcBsQzTWLQIWBA5WzQiQUCCVYRS
         qAN4bD0wbP4qyVd/TZdp0Ix4/e7v2wwdSMhpnlzgFplaB/wQoG6e5u/t4alojyfEqD1T
         9o8a8DL1rkGbltTtkqsF1uyEyMVUl24sQtBaeHtFgTBusEy7ZSQX4cwtZ8GmfB+xJJov
         ItD74p8bq9BtZDzxWKbnO+lQB59IL/FwR7GBzRibKErs6NISEZZgcbA1AQO2pJwGek3e
         zYOldycCL6U33MVUM4h4ST0ojfsrnmFBzL+1k+l5CB2Iz5mujhPvQeZxe+jzO3vdDDlq
         Ek4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bouRfF6/sBtVI5L0f+o3qswHe079xcdi/E30/5xT1pk=;
        b=F779K2/Q8stNY6xEdca3Y/mRuWYpLjoLwAAA5mvWi1BYNqxERrXZ4EvqPfSHDZwX8/
         Pk/0AICczRwjnoj6tusZSqQciPSCwHMMAFtUatT+eAaOZwDsCBkajzQYoPtDiPPIshBI
         296rR6dpyBEFTyblT0H22hy/Pj3dCc80F62isKV2DTtWrV8nMJQnEPG8voewPoxtJYjm
         zHdZwwKdcaKfgqPx+eDA5IyVdo9/LZbtrVUujvOJbICJXIb0zDfY/z2cX1xCNfH6lkDh
         5XCtAAG7qgYSC8FHHpgqRydBN7pei2GWrRO6VZEFI+z8fzYNmWV1WPmrQvbgQqcXRxTk
         C6Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=XHH2ztO1;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i18si778663edr.1.2020.07.03.20.45.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7f-0001Xb-Kv; Sat, 04 Jul 2020 03:45:52 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Jonathan Corbet <corbet@lwn.net>,
	linux-doc@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	dmaengine@vger.kernel.org,
	Luis Chamberlain <mcgrof@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	linux-iio@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com,
	Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	linux-nvdimm@lists.01.org,
	linux-usb@vger.kernel.org,
	Eli Billauer <eli.billauer@gmail.com>
Subject: [PATCH 08/17] Documentation/driver-api: media/cec-core: drop doubled word
Date: Fri,  3 Jul 2020 20:44:53 -0700
Message-Id: <20200704034502.17199-9-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=XHH2ztO1;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

Drop the doubled word "the".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org
---
 Documentation/driver-api/media/cec-core.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/media/cec-core.rst
+++ linux-next-20200701/Documentation/driver-api/media/cec-core.rst
@@ -341,7 +341,7 @@ So this must work:
 	$ cat einj.txt >error-inj
 
 The first callback is called when this file is read and it should show the
-the current error injection state:
+current error injection state:
 
 .. c:function::
 	int (*error_inj_show)(struct cec_adapter *adap, struct seq_file *sf);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-9-rdunlap%40infradead.org.
