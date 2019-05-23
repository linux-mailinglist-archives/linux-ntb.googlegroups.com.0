Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBLN6TTTQKGQETPUE5RA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 129B128CED
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:11 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id p9sf2083431plq.1
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650669; cv=pass;
        d=google.com; s=arc-20160816;
        b=NeprLYQ3d8JnAYDqVJ1IiSS6xJRDX7Es6aOm+CrM5cTAY/v7RPcJ9FSRgGGO/1b5Dd
         UQ5S/DheWiNSyg7h1/nytLuYS4UXp4cj+AfaAGqLn5VQRaTLxv1ONy5jWOy+NlF8jg5t
         y6VNRTt6F1f/jz2Uw7/yPb5pLEl6fh1kk9d1mhEymUt6BUKO+BDA5rp86itS0TiA+cj/
         BYUJIzTBMS2jsf88CDYPiWegF8Isk3M3V6b0w7SzTLVvVgOAQj8/Dw7I8H23Tbj3WS42
         57++XqRsQxKlXjTYLclBcu5l1R6bDpPMleS/qDC6Jk1wvwYf/Es4Du4GB83S+RVHTIpI
         HOaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=WXm5Bda64x9bOLnRdu1wQai1ip4NHZocaMZciq0x0bw=;
        b=LJVN+f/bMvPCTd8YqPTE1jSY3/JQuNH5v9dXAJfg6JJp4Qs0yPbQpmgNqLrGUo29Tr
         TJdvNoo/NKudnTM10apBjP3vncrv/3o6FYC3KJyVmk0RuabAJZAan1Zok/1gD2wjcPYk
         6V85NKdneKfYE1/BnEXuzxrJssdsxYfTap12iXMMVGLO4si33bNNEfG4tH0aPOY5zhui
         6cm8/JxXU/cEaGpASCOmOmf+Sfbdx6DTgR3iquHtKH0f18cdJC7yE6IEN0D1q5DZ7xhT
         jW3h7IPOiI+ZDr5wNfwtgallpJMIKZ9x6vSJdebfYFI+pVf9i3i019+MxYb5mGczNm8T
         VPDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WXm5Bda64x9bOLnRdu1wQai1ip4NHZocaMZciq0x0bw=;
        b=JQuXnFochIhvCjGoBtxcZ7h1lykh5RiRpf7DVjkgVeUKlnPnrhb5Do0sQwLW9iqel6
         AwrmSZPlvfzYOkNj6GMbA3tFPh27+V/BtXSCjm2A8uiH+Q27iVBbxkFxaoBYze15kboW
         KRaVh7jvLXPVMm0at6jMbIcp7dju+2grXuYHoXZNsI1zK9jj8rjUl77F29TbJBmzmk3a
         qE/q8nrLzhNwWf1GaLjcHMiCaxd7tjdk3MLUYqdigEa7KCEJeCMiPJI/3k3J3NRXQ72n
         DbJvEae+6E4szww7Wf/cbscTFAql1lYojYqbzvDwjA1takdjflZuATwOp/U3QdGSNj9V
         4wlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WXm5Bda64x9bOLnRdu1wQai1ip4NHZocaMZciq0x0bw=;
        b=tCnSI/kr0WH/a1fvNv/YcV62SGz6BGMB43apHt2c40NVZeGsdW00wu7rhkcW8P0skB
         HA0eWDyLHXHCSPtI1OtpOTWtsDIU4Syc+BcxdHK9OuYXkicEJwhOIkmUFIMgfymbBJ9V
         LgtvMpddBVI8pMmt9FyLD9oxa9FsbbZqAgvnTz5+WcClkG+lDtpoFZehm073bmB6Ngwk
         MNEAJtUCq8munZosKgaOBlq+PobbKiNhvs9Fa0sQObTpELw+6nnZtMZ/CUFEJB5l5gLC
         DlR8JKH9NNwaDkodhtrjKmNTBNGh9mND7cfxD02nvjqM/dxcx5Viu6YDmqSkeh28hs0y
         tLKw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV+pR5VWXeBUMVJlDNV2DCwwGkeDnxa5uSYbhyuAWexNynnF8YH
	Z9YnmeSqtxpAYBLe7TX6P0c=
X-Google-Smtp-Source: APXvYqycBR4SCrrD9HQmGwAfLyG2UfD10ZnrgbfaLHEV4PstV4yvvcU0bzlEWGJRDWcqrPcpboioJQ==
X-Received: by 2002:a17:90a:36d0:: with SMTP id t74mr4784956pjb.4.1558650669506;
        Thu, 23 May 2019 15:31:09 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:4c86:: with SMTP id m6ls434869pgt.11.gmail; Thu, 23 May
 2019 15:31:09 -0700 (PDT)
X-Received: by 2002:a62:6d47:: with SMTP id i68mr108425147pfc.189.1558650668983;
        Thu, 23 May 2019 15:31:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650668; cv=none;
        d=google.com; s=arc-20160816;
        b=skbZYQcoZsWiL+wpUq+scgA+A8bz6ZS/EDIGb8J7M+cBKa6C82jf2QBPvdojcHmtV/
         sDRu0O334wPQvawCu/Qautv1/gZuNo6xMgwaqxo0JDfAiNGuYdAasVfR9T78o+eDOa3N
         rb9GtD5WrMqYhc2LIOFQLyBgLlZ6e4K/acL10Jd661mVTrG0S8jDmzgUuvr9j5fv/0Qp
         tFlT9ZzKbc9OIbULZFV24DfyRu9YGXyawv+Ra2u18UMlIFww17pkuP5Y5Oykif6lCY7w
         akJnr5xMR4A79pJH+0qlsfSo87rq89pmutGFBWTlh7MwV7GAxZlPnYMPN8hAY45gr7fk
         ztNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=TqnpLtD917clFMaD7B9zqDjKqNgwFBvIK13sP6fTzvA=;
        b=LcCNxlYgZ+/RORMgU8zanzpGM1050iVCqck2fsCLffQLZ3IckOC+uOVTf0qf2NPl8l
         rUr4Flrz58ZhKQ9Ea0ZgMuwezm5kWa+9AEo0euVFJOCI/kUoK29/LL/EY+oMJ6U9tXW+
         7SptdlLYS+tqnJKYBSA/Qa+nu+jggBI/xCzGafWLUN/BUV+SXTWJT65qhHvBHlVn7LX1
         8sCDKgqB3rKEdrkunGPeLgaj5MEuok+f41oJIFldrDuplobaHOvasLFl1e+S5x4JGx0/
         lFjydiEkF+enhbVQECnLnrgoZB5CXu19tPkuaVxtpxLpj8Qi7MleAx43/R5Uv2J8w4e7
         o8hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id d28si42604plj.0.2019.05.23.15.31.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062R-Eu; Thu, 23 May 2019 16:31:07 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEq-0001SE-4P; Thu, 23 May 2019 16:31:04 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org,
	iommu@lists.linux-foundation.org,
	linux-kselftest@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Joerg Roedel <joro@8bytes.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Eric Pilmore <epilmore@gigaio.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Thu, 23 May 2019 16:30:55 -0600
Message-Id: <20190523223100.5526-6-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523223100.5526-1-logang@deltatee.com>
References: <20190523223100.5526-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org, jdmason@kudzu.us, joro@8bytes.org, bhelgaas@google.com, dave.jiang@intel.com, allenbh@gmail.com, fancer.lancer@gmail.com, epilmore@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
	version=3.4.2
Subject: [PATCH v5 05/10] NTB: Rename ntb.c to support multiple source files in the module
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=gunthorp@deltatee.com
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

The kbuild system does not support having multiple source files in
a module if one of those source files has the same name as the module.

Therefore, we must rename ntb.c to core.c, while the module remains
ntb.ko.

This is similar to the way the nvme modules are structured.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
---
 drivers/ntb/Makefile          | 2 ++
 drivers/ntb/{ntb.c => core.c} | 0
 2 files changed, 2 insertions(+)
 rename drivers/ntb/{ntb.c => core.c} (100%)

diff --git a/drivers/ntb/Makefile b/drivers/ntb/Makefile
index 1921dec1949d..537226f8e78d 100644
--- a/drivers/ntb/Makefile
+++ b/drivers/ntb/Makefile
@@ -1,2 +1,4 @@
 obj-$(CONFIG_NTB) += ntb.o hw/ test/
 obj-$(CONFIG_NTB_TRANSPORT) += ntb_transport.o
+
+ntb-y := core.o
diff --git a/drivers/ntb/ntb.c b/drivers/ntb/core.c
similarity index 100%
rename from drivers/ntb/ntb.c
rename to drivers/ntb/core.c
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-6-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.
