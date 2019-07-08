Return-Path: <linux-ntb+bncBDE55XUH3UHRBYGPRXUQKGQECH2KZRQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A69C962573
	for <lists+linux-ntb@lfdr.de>; Mon,  8 Jul 2019 17:57:20 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 12sf3781773ljj.17
        for <lists+linux-ntb@lfdr.de>; Mon, 08 Jul 2019 08:57:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562601440; cv=pass;
        d=google.com; s=arc-20160816;
        b=RC2z3qfuX5voge0liWh37kvWaw2iBX1Mv5LlwXez3c/PW/d276L+iKAur/8SMdyngu
         j5JUl1blc4Wl3QTxZwi6HRndC1mSyBsr+enJOISXss/ZTqX3gVvXraNJLltotISZM49I
         HxH30x4aRS8+/6zmJjZBB72Z7YE+5r43XZjoYT1HBZGV1a45QZCKi+yeQZwc8945RHCG
         SR7D3sqyXy4iKKHxzYJQN0iCcQ+l2oQQdmpK57xO6SSUv94NNT+rnTfKfoic/EwVdPMQ
         MUOHgljpXqngqNAnaw1Y/b2ZVaoe+SADAx2hGB010LEhV7ulgXe9ZaQVRJilG3xzfq/z
         DeLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=pIs4QEvwOVXzSCaEftQoZTZlKkOFzberz/EDAQB8z9A=;
        b=BzlC8/fSTRIOWVSshpnM6CrfCn1reiRcfJGGxHLyJI8UDBbkeVAh7J/mJXFfxe2Rxe
         8U32boxdBhku5/jduTut2Kw8x9ABZgCNEsBit1m96Hb+UQOD97S1tHdoCfYpmZSvuY8j
         H82IAHbwstGK9/6ZTu+SOdpfT8iJO+KCETpnl58i+T79gg6kKHAz+0mIL7GZExOE5PNs
         zgudtK+nYNPHUq3DH+9ojvPX+/A0x1vkG6wCWnLlbmgvlu+pCj86bU/tTogcLZPvgRQ5
         UpDZ+MdIBr0zN2i+JEQdO03mRISY/7ENStrHX4bQkZmWUpDDv84/N6amqGfx+kwXOGuP
         tUqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hqEXm92Q;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pIs4QEvwOVXzSCaEftQoZTZlKkOFzberz/EDAQB8z9A=;
        b=NhxFs1qP7LutMzIuqMplJ2Wgn0WJw3NeMGHDVKrNSVGj/QhsOu+h90MIMyhgGuo1nD
         DmuZdD2dwbZ8kImB/1C3dgPn3eiaIb8cppoz/myLSGWFftkkuole83LiFQDOLwnKqjU8
         6OgaFEK+TU9WYadamZ4uJiKMWK88abqOn1XJaHohOJ3P0Rn0JffQSqj+IGxZ6cMPGAEn
         Jy2RszhJq/VjdjpsS2eKbmc9hS6YIgb4fZGvIB1wHR6xzvSjNqBo0MEC/mH28N2QHMfk
         aKAuSvOoNPMNBfq9ixNpg440+5tdnPrX5pzo2o6hQigqVcCoLwr+rNn+NxMr7qiDx4+y
         /tDA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pIs4QEvwOVXzSCaEftQoZTZlKkOFzberz/EDAQB8z9A=;
        b=HNSO6xaNeyeHcsXHFY9bHeio2v4YZj0n8y63+NNA/SII4vGdWNsBqkul5Qq0x6jHUu
         he7kt8c0b5AW3iz4YXYL92VlpP0je/X/aZOjmNCjr87stYBwMrB+NiNQJ/0708CaX8G1
         11V5hdpMJPmIbyfulQJRh3KZ9GfUjhyO7p9ydeUh0mPk2g6HAf6Ipf83erC42ynOyPFC
         AfuQYctqDIdFDOzR2YYON41qo2s/4j3gRXq3yP60Fkjlyxn4Y/VJiTOTKQsAdMybXLxW
         O5vzfveNOsEBX3ibz2N54vq/dwSY6jv536xPc1gWjEGSEE24Zasxoa0X5mgit7f7eXUT
         WGpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pIs4QEvwOVXzSCaEftQoZTZlKkOFzberz/EDAQB8z9A=;
        b=oCbVDhScpU0dj8yZ4yZtgVxZjEjFlbGMe3UcY0U3ycJgJJsDCGrD9SubdBdeDDglvt
         1SWVnktZ/FZb6ZQwLfEth3Oga/MB1IO4bHfW2w+NBimshoIF7/jhM+oGaYbjWY3r7qUS
         FEw695MkzdpJs3A+bVSUZZPJgChz+pDUFM3ALeilltEixTE7mhC1IZLqb/3s/IL7/xME
         lBelX9UQMPMQejXqSQ7z/wNpkJ0d+b/IvaoWSuxCR36tfRgWFfkftJv37yL843LdLEDa
         QIKEP9GDwWfEpahOdjk4M7YkJx/Sm9FqW1XSfzlRM5Qroo5x7nKUK5QN0nCMUCCgz4Ek
         yOeg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX9Txg7a4QneLAFLSSLSNHqUDJnJsYTLNzsRyQus8szOMa8QXJq
	bg3AEVEiby2FpGHXnjC52EY=
X-Google-Smtp-Source: APXvYqzybjHXNsnQBp9reRNcFKarxNBLdIKbp9KtIfXv1sJtEUEFAL7+2BF1fQFmWBqx3A1WmIEEdQ==
X-Received: by 2002:a2e:8591:: with SMTP id b17mr10391038lji.71.1562601440270;
        Mon, 08 Jul 2019 08:57:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9d0c:: with SMTP id t12ls1932031lji.12.gmail; Mon, 08
 Jul 2019 08:57:19 -0700 (PDT)
X-Received: by 2002:a2e:8ecb:: with SMTP id e11mr10820485ljl.218.1562601439520;
        Mon, 08 Jul 2019 08:57:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562601439; cv=none;
        d=google.com; s=arc-20160816;
        b=ZvfHtQNNmrS8OHuvRzVmcWnUsY8IfPHnAS1P8AXELzNQrraCMo/ZkCz6+7CX9JySSO
         9Kd+ExjpJ42Mvpzt+NrhDOypPUGfWnpPF1baN1/zycNtfzKE1vsMxoDdbvLympX1YOCv
         QXtOOOj6Cb0HbKlyQW+BPnZN/bhMq6fQyxdzqtR3sejs/Fo8yh/BJeEQdMua0oUbN+bD
         5sbC+IWBTJXoWxLgOJOmbibAzcVQsC9lAacg/1Tka53K8XoebQpqGK6u09WixutESANT
         DAAgnNGBKJhq8v28hKdPXpLEwoia2tw5/O990QWW9Xdg2OjSa209+aaGrVB4H9yPWXvA
         5h7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=rpr/J1vT+MuENIT2YaR4uZfdSN3svPx48FymuHxIG3s=;
        b=eTDdgSPr0qzVn2I41bORj+zYgZ9/plaqqPGgEZGBQRVxALHo5wCu3u/k/hJqcS9HGK
         rcA29UGdywGrnqmEZucQ+hdlXhkBwSr4KvPdbCgdjP79dVwugLXqYMDqqGzosjdWqKBG
         IWegqeSSWey4rr7QjMDaEW05/foqAFEAhW9QaETPNBdErjN5IvQuryjWEmr3hMNweCbQ
         MtgCzSPjPAdEOxOvpX2R2BV0Vwa17z/EGoIGpJpuKBQ3hgrN7EFuNPfpnjNpnkIAuMgP
         YzdTbnt5Uag4NhQdEapye8LDhrN+KrW9QQ7BTeOmPZEbiPMLxSZCD232IuvWbcznEHRC
         scQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hqEXm92Q;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id f26si1008549lfp.5.2019.07.08.08.57.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jul 2019 08:57:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id r9so16451163ljg.5
        for <linux-ntb@googlegroups.com>; Mon, 08 Jul 2019 08:57:19 -0700 (PDT)
X-Received: by 2002:a2e:8849:: with SMTP id z9mr10622874ljj.203.1562601438890;
        Mon, 08 Jul 2019 08:57:18 -0700 (PDT)
Received: from localhost ([89.207.88.249])
        by smtp.gmail.com with ESMTPSA id d3sm2809995lfb.92.2019.07.08.08.57.18
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 08 Jul 2019 08:57:18 -0700 (PDT)
Date: Mon, 8 Jul 2019 18:57:17 +0300
From: Alexander Fomichev <fomichev.ru@gmail.com>
To: linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Cc: linux@yadro.com
Subject: [PATCH] ntb_hw_switchtec: Fix ntb_mw_clear_trans returning error if
 size == 0
Message-ID: <20190708155717.wh4vweidewab4dpz@yadro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-Original-Sender: fomichev.ru@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hqEXm92Q;       spf=pass
 (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::242
 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190708155717.wh4vweidewab4dpz%40yadro.com.
For more options, visit https://groups.google.com/d/optout.
