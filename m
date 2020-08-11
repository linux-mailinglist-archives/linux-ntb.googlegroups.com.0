Return-Path: <linux-ntb+bncBAABBP7XY74QKGQEIAZUGUI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEA62414BC
	for <lists+linux-ntb@lfdr.de>; Tue, 11 Aug 2020 04:00:32 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id d67sf6929633oob.11
        for <lists+linux-ntb@lfdr.de>; Mon, 10 Aug 2020 19:00:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597111231; cv=pass;
        d=google.com; s=arc-20160816;
        b=zIg+KTywE6zzr1uxjfO9Vg4XJjABNVjZO50OmaX9Spc8KAMDHr6EmqjSKlXlpL7l96
         hEIDzJ+JjdsQlBV8tHrKxBjEM0XQh7RrhyvkFtwtUjtwewjk4BW4wPLAz5U+PzDKEkKo
         XiAs9M3axX74KSny/SdjLMo9EOGZzGU0untivTBBqEgQeQhKQJSGKgGROly5+/PaOB/z
         knKgMARyhsgrk3CAGAI+gB5JIBt96ufFbBQMya/hbp1PZTgHQXrFGfgSOAXx6SbfCvx+
         aNUr1qdwGbgNVA5fgPL7fty/J/PUMSsTd1lUiTJ5uVTKOYch/bGhDHEa90bpEv4iUUGv
         wUnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=u4+MBE637CDfNEf9H0whbhW0fs/4r2MubBwOIHYWer8=;
        b=kmNh+0JCQxokbf7i9gdntbRCDJ0KrEbyTd8Ox6LMov3AaADTlqXZdLtGnrukiVHlgM
         u1sXDLT5bNCbnPlr1EJtXyfvfouNB82SoX2RizeafacGZyWYzyylvxRcVVN05cdVUuFY
         lvu6LAk09N/e7So11hkn/QtYqoreS2jAGbak3QB0JLIYeczbCNWC7qf1Hfm/TYp7W/s1
         /m6PjfH4cwnNDIMI2wAPmuELNhusqtyagv5psusKu7qaIsapML9TWF/HUQxfFvDVWSsD
         NUTsaLllKh59pa35Rk6FLCQ2TWtl2y5SpmaqCDpmt7dVZBgwUYZCjz6ep9Wt8Y/3ejXX
         Y5pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=likaige@loongson.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u4+MBE637CDfNEf9H0whbhW0fs/4r2MubBwOIHYWer8=;
        b=fJ7XmwGzo5CX8AC2XE4EhZRrSjCg8WGYU5kFPr6+H0tyKPkW/BS2LGsdJxZzeOhAyO
         ebroXdtdfodVApZU9WmF3hVIQGza3OlkuM3Q/s0xWvHuvLEYB2s8xb8easB3UZc0WAiN
         wPO4mX7WcuetIFToQfkLGVc3q5KgF5lvrPxQFsC6yhYl1hIWxF0FupxEPdPJSLrOrQ6d
         oqDJxfF6dSfleNCZRFm7bUfLP7cmx9Ug85VVlLYgYXKuIOHgvjNGGu5dAL6s7rsrs3kx
         LGbyJyD19GoMc8mAsTIcZLCP5aygujPrwI/HmlsaBer4mY3hcbs5IwGXO/BgwiZz9g7b
         RFXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u4+MBE637CDfNEf9H0whbhW0fs/4r2MubBwOIHYWer8=;
        b=mP8skKgZLCGLPGyEdiZSKrTLGo9jfqMN0n5fRJ7cvbdeYaAnGUC32QDLlQ4TDwRk3F
         5m37cuJdvnmrpU6JQO2JsT4z++pDlUL6qNz5F0pzeRPrKio2+6y0sGejKWyevyLCGNBQ
         lD4/44hzZxPvndSJIhwsfdYsl0SNsHsCe2EFUc8obg9gF0HarAbaUDiHoCzFgPqllKXu
         03KoWXtBHmZvVoedsd1cxjOABJM9nvFWeGWbkYqLMAc0LgTIqKaQNWZ5BTCL4yFvFTFu
         20WBf9wr3vUusn3TRj9iwHklbE7ZwWJOcL0x1YlDo/Fu+A9oDBS2cGepAeXtuDHjb81S
         rFTQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531/A+QljuttXA9ysaVnw0iJvW4ReviAz4JobAuMab4fACzGCD5X
	4bcL2X9qJUie/BnzimygJ9M=
X-Google-Smtp-Source: ABdhPJxtu2SmayJHi2iUqw6SSY30j77CLn7h6nazrcRsRok57j1aRPLTMuyKTe7FmuMBcy2N0oAmTQ==
X-Received: by 2002:a05:6808:7c9:: with SMTP id f9mr1777737oij.69.1597111231464;
        Mon, 10 Aug 2020 19:00:31 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:d09:: with SMTP id 9ls4030125oin.6.gmail; Mon, 10 Aug
 2020 19:00:31 -0700 (PDT)
X-Received: by 2002:aca:3ac2:: with SMTP id h185mr1833934oia.65.1597111231242;
        Mon, 10 Aug 2020 19:00:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597111231; cv=none;
        d=google.com; s=arc-20160816;
        b=jEJmJajbQM7rDTEO0SxjTijhc8vMFq+s+plzkqr0KOVBeHCNM6sCgw3nZLPbkWqt4d
         HVpo0CZL28R0HMGuxaAEVvS9P3l1PI6yQsbR1fpmXyTujiaLYvbVQJmciLxt3n25zol6
         WLApTT7sTJmRFbrKSIYfDDR49nQ4PRxp+sEgs3HrMCWV5OEU+ITCR2aRyHYNQau9gh8W
         4ROu6Y6Q24vlFT14TIkYpayTHnKsK2SDQolO3Qd0wRCaHtqtl1OPFvZnFTBwQTs5F4kf
         NRQuYMgcvxG3a1pHJoNS5MR6g3gjg32NZXLLfDMOoeUo1iUe6NPRkUt8vUTDP5v97Xr3
         En6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=o6qs2AUfyvscR1EJRzugc7bfggenhBjHgbJggcqkj/E=;
        b=H3tcrY1+Lu+xTnReLP5i4ABw4DzWWdYZfv+FMja6u1lXgoaGMV2bTzQEIEiywbXVWr
         6kxHMc2dkYzj1KPZA2gheCXA7KGbLkyIiNFX1wl1Fld01ByRmYu7GOJrAYKMoKsPbmLt
         qqRo+xTYypFd2FDhVxQmtmmgsliRB/5F4WOtxhkvAWzewbkV9Ccn0G6o6rD9fBy29exU
         M2HWtfxlUh4EgWzmZNV3p3x3QFwHSohwNWiPkqu21PPbEZNaZi56G1UPo6z42pWBEqDU
         FNELu/Tc6EY/K/Rsy1pV96rfsXVMkowaP86yT8+PvnScZnsrskiXYlgpNBNamlfAQ7W8
         dEAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=likaige@loongson.cn
Received: from loongson.cn (mail.loongson.cn. [114.242.206.163])
        by gmr-mx.google.com with ESMTP id v18si143032oor.0.2020.08.10.19.00.30
        for <linux-ntb@googlegroups.com>;
        Mon, 10 Aug 2020 19:00:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as permitted sender) client-ip=114.242.206.163;
Received: from bogon.localdomain (unknown [113.200.148.30])
	by mail.loongson.cn (Coremail) with SMTP id AQAAf9DxT9+d+zFfTCoHAA--.3432S2;
	Tue, 11 Aug 2020 09:59:58 +0800 (CST)
From: Kaige Li <likaige@loongson.cn>
To: Sanjay R Mehta <sanju.mehta@amd.com>,
	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [RESEND] NTB: hw: amd: fix an issue about leak system resources
Date: Tue, 11 Aug 2020 09:59:57 +0800
Message-Id: <1597111197-28563-1-git-send-email-likaige@loongson.cn>
X-Mailer: git-send-email 2.1.0
X-CM-TRANSID: AQAAf9DxT9+d+zFfTCoHAA--.3432S2
X-Coremail-Antispam: 1UD129KBjvdXoW7Xr4kWF18WFyrKFyftF13Arb_yoW3uFb_J3
	43XrsYgr1ktF9xt3WSkr1avrWSvas0vrsrWFyktF9xuF4UWr47W3yUAFs5GF4Y9FWjvFy3
	ur1qkFy5C3sIyjkaLaAFLSUrUUUUnb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUIcSsGvfJTRUUUbh8YjsxI4VWxJwAYFVCjjxCrM7AC8VAFwI0_Gr0_Xr1l1xkIjI8I
	6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
	8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVW7JVWDJwA2z4x0Y4vE2Ix0
	cI8IcVCY1x0267AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVAFwI0_Gr1j6F4UJwA2z4x0Y4
	vEx4A2jsIEc7CjxVAFwI0_Gr1j6F4UJwAaw2AFwI0_JF0_Jw1le2I262IYc4CY6c8Ij28I
	cVAaY2xG8wAqx4xG64xvF2IEw4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jw0_WrylYx
	0Ex4A2jsIE14v26r4j6F4UMcvjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCY
	1x0262kKe7AKxVWUAVWUtwCY02Avz4vE14v_KwCF04k20xvY0x0EwIxGrwCFx2IqxVCFs4
	IE7xkEbVWUJVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r1j6r18MI8I
	3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_JF0_Jw1lIxkGc2Ij64vIr41lIx
	AIcVC0I7IYx2IY67AKxVWUCVW8JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Gr0_Cr1lIxAI
	cVCF04k26cxKx2IYs7xG6Fyj6rWUJwCI42IY6I8E87Iv67AKxVWUJVW8JwCI42IY6I8E87
	Iv6xkF7I0E14v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjxU4Vc_UUUUU
X-CM-SenderInfo: 5olntxtjh6z05rqj20fqof0/
X-Original-Sender: likaige@loongson.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of likaige@loongson.cn designates 114.242.206.163 as
 permitted sender) smtp.mailfrom=likaige@loongson.cn
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

The related system resources were not released when pci_set_dma_mask(),
pci_set_consistent_dma_mask(), or pci_iomap() return error in the
amd_ntb_init_pci() function. Add pci_release_regions() to fix it.

Signed-off-by: Kaige Li <likaige@loongson.cn>
---

changed commit massage.

 drivers/ntb/hw/amd/ntb_hw_amd.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 88e1db6..71428d8 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -1203,6 +1203,7 @@ static int amd_ntb_init_pci(struct amd_ntb_dev *ndev,
 
 err_dma_mask:
 	pci_clear_master(pdev);
+	pci_release_regions(pdev);
 err_pci_regions:
 	pci_disable_device(pdev);
 err_pci_enable:
-- 
2.1.0

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1597111197-28563-1-git-send-email-likaige%40loongson.cn.
