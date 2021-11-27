Return-Path: <linux-ntb+bncBDAMN6NI5EERB5EQQ2GQMGQEZKJZ7ZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA1D45F8EB
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:01 +0100 (CET)
Received: by mail-io1-xd37.google.com with SMTP id j13-20020a0566022ccd00b005e9684c80c6sf13385942iow.10
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976180; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y8CMAYDi8TdMjP9XB71KYqCSBHCE9lTPKN+CZvzMkIjdYfTvmfFXtz0eNm9CCH1h3V
         lU9rCG3+wJtHA7dIL3CnU2WU3v3JXTNrdfO4YSndtlhNsloavGmnNgYiGlbCd89s9Yq6
         pP8l2Uo38RQMWerqytwPtSYt6N+nM/tG2OpuGoon5ltB/sfUUvY6dSxRrpE+5ENdYBho
         sdtcsE0PtE7Tge05Q1gRFz6kWKlJX4WW6pb/VlGv6gDnvITiMqmLHRlgGfIdhHEx0pT+
         xg+mUXMkYRzxoIMms9x+j4Pbu3/DWWQlBkW+Fk0ODiVKJPz/Qm+qHCOUpsXJTV0znDtf
         QsWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=+++YFRo8D8g/ydi7ZUSjlwyr8RUUYFooS9Y1xRv0jmg=;
        b=Oex23pSgQZRhySBDrIsRFCIO+kxvn9qUE950lX/onEiXOJxgjXeRDVchmnr1nwXP4l
         82W9ANX23Jsz+haBOKW7HmtQ7iK1Jsup5T66WjFSXhj4P3o6EBF8wbhmyGetsjK06A9p
         tCew+8M4AtUSAwBJccl2+O9Vqbxl6/7plrQk6kC3OSWR/k84kDci3BeXmQT2MJXabiBA
         25PH1G9MfNYxfJL4XfFtKiLOL811n8rI5JMOyv/r114yZxrBMq1x4UT5q4mkC5zrLgKH
         Es0wme+BK271pmc9leQQMVvFbloCjkfyBJKLPJ7zsJsGvmnVfjQSXNrndPnU3nCbvtSE
         oLsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=dSOefgEz;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+++YFRo8D8g/ydi7ZUSjlwyr8RUUYFooS9Y1xRv0jmg=;
        b=WQvMfQ/gDsNdcAEiGMIA/EgSev9vy+M93EVv1lZ2eTejsOFMhbgBPy+hmiezi/Ljte
         2Dk1NvkQQZ4QEfu6zfE7EWnIQcBjwZF+O0BGeIuBSrB4Vl5z7DFbjm1fxdBvXP8ckFRq
         8HO99VQkmCp9aFU3ez4qfprWUU5bVeSBdJRBqHagfcDsq0vZW64+kGoz/PquCd+MZXz+
         JtAjIScIbbQ6EZ1sXy/WXGNtRK72pvYnNoXPm2ncslv1LpLGHT/jiOajFYz21DNtzeT5
         Vc9GAo9TsrpLdcn0TS82RTTSJKBSrJ5TJcCYY230msyKed57bTIHkvvwY0o5s7EoX5NG
         pD4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+++YFRo8D8g/ydi7ZUSjlwyr8RUUYFooS9Y1xRv0jmg=;
        b=oQmsWlU4QCAyZrZXXlTMrmb5iLQA8QhlU5mATIj2OTOQpVL9boVFC3CKw181yC3u3d
         MhpXKxg19ht6A3N9Uqzg/aQNtd5LZ1hB4qXtHXyODH46F9FGRmtQEpEOxV4DcLkDaCWU
         QAfjN3RxVZcwxTxbt5lLu2Q+pH0pg5cdLaLwdCnh+VetjjfMUWJ0wv7AFnZI9aosbTe3
         t6G/ybbgDO3ZYcD/negG9DZacyUN4T5ilP1v13j58q/ZVnf3lOB7wLKdEWXX+ft3L4Q+
         udquLmPB0YKj94ta9io9m21hilFws4hr6Lkeu3MUpq/sAYPl26LEIpHZrM8JM/sJjdZj
         r60g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530hYXbNkbXiqra9VsSsD8Hn77fbtxTeIW6tmRlBRU7bGoLJqqHc
	zm2kX06y09/g/IDQNyKkq0k=
X-Google-Smtp-Source: ABdhPJxvD9NFTtaFSDMH2CtRsRlxethe4tq/IlMwJYBuIgqZGhilt5gG80fiZo+GVaSghLP2n6k+Qw==
X-Received: by 2002:a92:5409:: with SMTP id i9mr31620179ilb.17.1637976180536;
        Fri, 26 Nov 2021 17:23:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1a67:: with SMTP id w7ls1086284ilv.8.gmail; Fri, 26
 Nov 2021 17:23:00 -0800 (PST)
X-Received: by 2002:a92:ca46:: with SMTP id q6mr32899430ilo.54.1637976180260;
        Fri, 26 Nov 2021 17:23:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976180; cv=none;
        d=google.com; s=arc-20160816;
        b=o2Wb2jEyh0I/bwRE3mnOGgHLMs5ulKZs2Tw1vpTM108knGzppzBrUGpSBee2M3XieA
         LS42pQ+nrSR7dDfzHEHSj0rH+Pho+4gTmu+L+xGTXJweVlRV2IXThP3EIzwpR73BW89H
         zLPuq0KeQcB0CTd7BElFrAyNE9GPesyLNavi9DCMNacF2B2R3L7rlNB6gtgPpo9leoba
         oZI1OPTj9Gr5xHhFdEzqZakdCc/As6c59Fw7XORujuYvjhTbwGLB58gX2ba2Wfp3JAde
         Wm2bjAsJyeGr2qznQPA7I6k4n2c1eUMSuYftHDGDk/BPSoZu2QGYe1av8up+k5haY9dm
         hqrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=D1PGUTvbMCo12qSm9MpHyC/iszyAeQMlmvbSI9Ov2K8=;
        b=Dz05G6r/Ca3sBRQUsgJAX9UVEUg/e3H8fxE827PXPndKf0pRThYN0TcPYpGequWhEF
         tpcms5aCF2AjG6xvYMkN5UKmm1Yk7cPpDH5RIMeEMbvsYy4MVSNFBE03DL++0CCdFQny
         9H6/s7gj4qLkq86QklJZzYkS3rB+arGBXWOLmEOMHHe1RzuNtLWKdFeoUjmPS3hf/YWe
         k3ZEWgsvUHjRL5pf6DtEwEQ0Hbs3jshEcvUX3CMRkUzjAGKWmN3MhM9W0xqvxFi1SN9Z
         7XwkOmxaTJ65P2S1Ara76lN1utY0UGGiqgRCZ+Y4+JFttHZD1hMWHWQYvLoIjFHBe5mN
         xRcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=dSOefgEz;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id q3si1194619ilu.0.2021.11.26.17.23.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:00 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.489750235@linutronix.de>
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch 20/32] PCI: hv: Rework MSI handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:58 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=dSOefgEz;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

Replace the about to vanish iterators and make use of the filtering. Take
the descriptor lock around the iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/controller/pci-hyperv.c |   15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

--- a/drivers/pci/controller/pci-hyperv.c
+++ b/drivers/pci/controller/pci-hyperv.c
@@ -3445,18 +3445,23 @@ static int hv_pci_suspend(struct hv_devi
 
 static int hv_pci_restore_msi_msg(struct pci_dev *pdev, void *arg)
 {
-	struct msi_desc *entry;
 	struct irq_data *irq_data;
+	struct msi_desc *entry;
+	int ret = 0;
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_lock_descs(&pdev->dev);
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		irq_data = irq_get_irq_data(entry->irq);
-		if (WARN_ON_ONCE(!irq_data))
-			return -EINVAL;
+		if (WARN_ON_ONCE(!irq_data)) {
+			ret = -EINVAL;
+			break;
+		}
 
 		hv_compose_msi_msg(irq_data, &entry->msg);
 	}
+	msi_unlock_descs(&pdev->dev);
 
-	return 0;
+	return ret;
 }
 
 /*

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.489750235%40linutronix.de.
