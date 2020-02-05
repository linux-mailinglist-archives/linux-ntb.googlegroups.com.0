Return-Path: <linux-ntb+bncBCHK3VHCYUIBB5WK5PYQKGQEIIVAZDQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FAB1534C4
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:35 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id i21sf700537uac.10
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918134; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fom/HjikBFwEjKIWDHYpxqlQINC0A+YwYHYrTTF0xJV592Oy3vm9uKM6Q6xXholWGD
         TJHjqTrMFf2TE9HD4x+gANxioxIIprFnTa9HAA+K9PfGN6244fSvlOzcmvG3YNZPZDyc
         2+lIeYwQRFq0KJXcrWKdA1MbyZdEkWrgluPaM8exVjfWwpS2lou9XPi2ZqSmp557eM3k
         P+kZWYAb3NSD7zymhS4XKo8Q7XBLLnbMwdrz5VDLF2vy8ooPzgKtBjl2SK9/dcnAGOfU
         L8QDTDWukLmkXQdqNEomMSSV34i0HQcQv98LdApSRwSUYNfT0/o7X0aDp2jGILYKFZ3s
         zQzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=go+YFFtpMxVOaArJO4gFzEfZzOYuX2smYUiXvjrfPfA=;
        b=TB6nIdVtmMHWXb4/QdLX/RL45R8EG1AfpDp3ElV0/jkccPInvqTBOCcPGTDDtHfUhH
         q+zmgqjKERgvnWmgFtarGCnbO8QM/3CLe2DrbBdHXamxLJGHanAcLHJ9HfAM2X2rc1j8
         OU1O04J32zEvkThbl6voi0vdl0YB/usLNT8Fs6g4YWR+ivqtXFkS/Qa24wYM0GiAVNXj
         dXlSb3d8qsK0cnVZFaJVqFzS0SqgP6oTSOmdqQpuOBUuIatjlzfbpi3PZQJ1/+/eqiIA
         D2a/7now4MawfA+mRD+qKsOXMfK7znQAqRSCokSiuBXPQyaKmpreg6tPkZ0lD5hf1kks
         AhEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=upPG+0IT;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=go+YFFtpMxVOaArJO4gFzEfZzOYuX2smYUiXvjrfPfA=;
        b=BinL2e81RaqV1yuAKm1Is7TeLatrBgizr7rea9vsOMHGPfrLCXXb15wJJLm//RmLH4
         tW4fDYLgtO8yP7i+gum1sPZIuI93iHxBPYsWTLYhGRuMoavGOXMJMr/qgDmPWvJGBSpH
         zCtEEyNIrOOic21JRvm8OlMIwmS4A7tuHsdm/m9/zvjPdPbPZPUJd5FgfYjcMU3tEeg8
         1KcpwnNpnbWYNW9LmaUcXJoBtUGFRfuL9wU6PoXDNyhAPx74/DtDxwQj5w2yHufbE75J
         hjm6mPxf1Fy6/N3VLj5Tx3JJerE5GGj1rGJRNPwYtRq0lMS0ynXAfTis3jOARpsbGOr7
         TS+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=go+YFFtpMxVOaArJO4gFzEfZzOYuX2smYUiXvjrfPfA=;
        b=tJK4EbjWhqFy2PFvquPhzwEChb3+robMxpSrmYgLCX1/Tn9/K98HpdqwszCwzQ9qpS
         yzuTef0zugHVO/zkQTdpf5jpu0boq6eTmrauWJGgHBHdHYQ2wK5S4NTyGiy/xmSUGv8l
         T20yplUre5PlwTH5B9657THfDOyoog5Wh1X6NXiCjzsh3vARtPliHzzGBq6V+EBrGq9C
         uM+hoJ5AkbzPnHiMhNdF0VlsePL3KWQ7oSfSF5bSa9Za3uk0fDlQLE6SKmetzgDz5aU0
         r2MzjGxHMm3luy9y8YGy4WHDSZfbI3ekMpHFMjH+XEDVB3R20gp3tj+yUweir33njGMj
         9BEA==
X-Gm-Message-State: APjAAAUcal3CyGxx2tqervIT7UTy8Raty56+RrvR/9fYgGnS+Z3S9WgJ
	wW3gLQlFk4VXriMWrVuCSDk=
X-Google-Smtp-Source: APXvYqygVrJ98p/4wSlLYkUfRvwAWp4xQ0eD0D3JHw3m9PXqD66UE8EwaWEzpiq8ObXWhqIL3Xc7dg==
X-Received: by 2002:a67:8704:: with SMTP id j4mr23517270vsd.106.1580918134613;
        Wed, 05 Feb 2020 07:55:34 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:664b:: with SMTP id b11ls193029uaq.3.gmail; Wed, 05 Feb
 2020 07:55:34 -0800 (PST)
X-Received: by 2002:ab0:1d6:: with SMTP id 80mr7901122ual.131.1580918134045;
        Wed, 05 Feb 2020 07:55:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918134; cv=none;
        d=google.com; s=arc-20160816;
        b=Pki9CVUNAwDd3KJFE+Y55ih9ryLRwP0zpZ5DwI6KPEuft+BK3HBZ+oEhCwYaWJ7xuL
         72hO26d0tguPAgdPXxwqCqwhyU0obhlg7WB7r8IZ/r0k5ykQzmfrvdkHHUY+UN19siZa
         Kj5dz+EADHekH8+3OAdLj6dp5tTKNkbHEtQJZy/DM3eTFj/jweNszvN3Wp6njGUT6wrd
         LXKYttisQFsX9/ISGxipOYOqQTGzPGuOCFcQhZTWM93pFjhuyDZbC/2tL/dKUfzEz29+
         BJqfDQug1KJ6tQYNnANFPkuLlsT5TXBgk6VzVVuxvda2fLOO9FYmVNCnJh69vjtSU9Pr
         xkOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=g1IIx60amrgjfE57qozlHgEQ8/enUuSyOSjIAvt32+w=;
        b=dRauBD2T3eRocQD03VbqZ1ay/UMbgZnMvf+CywX+y8RwwpOgTeWDPL261ESUB1yfl8
         7TtAKpVMXGMiB3tcwI+psADUTHJJBnGCY1PI/mtzhJNo/jN8KBueTsunHWhglmmY8nZZ
         1OTOxLQsdzk6R1XBZCmRb69hB1Jr47xvIun/AK++DCUynwQilR/4D8981AnUgs4TXJ+2
         s4pu0Eq3FLLsBVdEk1kVX3J+yJQZyPxO+ET24ubegWcprzJl3L0xrL4xda24naPnKYEx
         MPQvQvoJ+0OYjGBkVJh8OAHwzVBEkro9ZJF8T8UoCFBgnmEnQHooyCVGZoQz1ESpnwKx
         R0rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=upPG+0IT;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id h6si3804vkc.3.2020.02.05.07.55.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:34 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ep11so1150031pjb.2
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:33 -0800 (PST)
X-Received: by 2002:a17:90a:d804:: with SMTP id a4mr6272089pjv.11.1580918133166;
        Wed, 05 Feb 2020 07:55:33 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:32 -0800 (PST)
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
Subject: [PATCH 15/15] NTB: add pci shutdown handler for AMD NTB
Date: Wed,  5 Feb 2020 21:24:32 +0530
Message-Id: <6c943711a14cd79bd6f3b392787f09da2cfb3711.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=upPG+0IT;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1044
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

The PCI shutdown handler is invoked in response
to system reboot or shutdown. A data transfer
might still be in flight when this happens. So
the very first action we take here is to send
a link down notification, so that any pending
data transfer is terminated. Rest of the actions
are same as that of PCI remove handler.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index c6cea0005553..9e310e1ad4d0 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1296,6 +1296,22 @@ static void amd_ntb_pci_remove(struct pci_dev *pdev)
 	kfree(ndev);
 }
 
+static void amd_ntb_pci_shutdown(struct pci_dev *pdev)
+{
+	struct amd_ntb_dev *ndev = pci_get_drvdata(pdev);
+
+	/* Send link down notification */
+	ntb_link_event(&ndev->ntb);
+
+	amd_deinit_side_info(ndev);
+	ntb_peer_db_set(&ndev->ntb, BIT_ULL(ndev->db_last_bit));
+	ntb_unregister_device(&ndev->ntb);
+	ndev_deinit_debugfs(ndev);
+	amd_deinit_dev(ndev);
+	amd_ntb_deinit_pci(ndev);
+	kfree(ndev);
+}
+
 static const struct file_operations amd_ntb_debugfs_info = {
 	.owner = THIS_MODULE,
 	.open = simple_open,
@@ -1326,6 +1342,7 @@ static struct pci_driver amd_ntb_pci_driver = {
 	.id_table	= amd_ntb_pci_tbl,
 	.probe		= amd_ntb_pci_probe,
 	.remove		= amd_ntb_pci_remove,
+	.shutdown	= amd_ntb_pci_shutdown,
 };
 
 static int __init amd_ntb_pci_driver_init(void)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/6c943711a14cd79bd6f3b392787f09da2cfb3711.1580914232.git.arindam.nath%40amd.com.
