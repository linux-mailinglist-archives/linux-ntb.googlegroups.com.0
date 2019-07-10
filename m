Return-Path: <linux-ntb+bncBDE55XUH3UHRB3WKS3UQKGQEITSFZBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BEB643C0
	for <lists+linux-ntb@lfdr.de>; Wed, 10 Jul 2019 10:44:31 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id e16sf420268lja.23
        for <lists+linux-ntb@lfdr.de>; Wed, 10 Jul 2019 01:44:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562748270; cv=pass;
        d=google.com; s=arc-20160816;
        b=PChuy9qtx569se575kZKXg4clyNkxipKrF7HJTleY5wIthR0upKCAhgiQi995cSfkf
         ZF76m3LZ7m8H69BpInyv7MC7jB33zmsGac20ERiuRdR2DSkxWfN/RH30m4jI8VmrR7kq
         rbTzy4x8T45ByZ2l5uGQE05Abjv7uE8F5KOzVYR+GmZV8UtWCL945UeOsj3++iyRJU9O
         QY1FrxJwqxwTjfY/MrR/kYoz/VcmSGi0C9EOwKx1xL1qRxRK6O45DI6BHrwvOv1q+77L
         rIUeViLJ8X3SpVY65Hnj3leSFbAo38oujkzCT1FFesUpELQsFgOTh5Y2V/EqW5Flub+b
         v9+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=N7mVPwTmh9bqgLrgCUfdVXbX6OgyYF+AtXgSX7/zubQ=;
        b=KzJFpJ9TAZ2QReRNHDW/Z4zkoRJM82lhtEqL0+flFZUtZMfAsFU9SKGJNtQXL+oLEt
         +uveMEVySr9emTT9nio6+DNDh5RrxA3eb9/AyDW0d96o3SPw/u6TXSgD9NF/0nObpqSW
         4IHefuNnXyzXl2+7PBpVGJ/P1PDceDSE52PaXplTOrSyxBr+a5dSyM9vZ5AfReag6ebN
         mBJuU6ksq0WqzeOL/vthJ4YL3MhaYfLMezLs39yfhM1OeGfx53mKoc/EUwjA4UnTvYxQ
         ddgHN1IaeEgmioSx/r2J9jwHAL/gHDdqC8V2QuwvBDkXNP5nX10zO9ig5KAvjYp5QYl4
         R6QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B5fmBwnA;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N7mVPwTmh9bqgLrgCUfdVXbX6OgyYF+AtXgSX7/zubQ=;
        b=OSISKbsu5KqVlie8HfnW5IWUIZMgFY170km/jjWZC246eDbzj42JTiR/I4HQSzjKc0
         Yq1aosyuB4XxYy+gVDgKbC1du5ozyMOS1yizAs1wJni08z3ZWqvXkB+zlrpr8rpJJ5W1
         nnjcPL+leuMGM+ZRc55wby7jHpecDOXhA6eBl8/wNDYP3QekGs7Knxh26JXFt0xxtLo4
         4pVLQRCT9zJ6fDh5U5i9Z74yoBcNtcqN9BNmHWTR03A+30W4rnNrOPKJkIr5TCs61xtk
         ehAK35CEvOXnh4vT2mSXeoUE4KVvwwP/mZV5ELdfr/Gei36fF6CClliZUv4cNK0lV78s
         FjjQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7mVPwTmh9bqgLrgCUfdVXbX6OgyYF+AtXgSX7/zubQ=;
        b=uKmCTezgy+weDWXnj+nl057A8Rj9zbPgANKHGS86E85gmhxKzyr9ad1WFFXt0AopSy
         QWX97JsM7nVua34+u0F8ESjlKZ2fhoA+bozhmY6Hlq8jjBTETYhb5kW7th+In3YXipUh
         dmEviCrQ7jQzo70OOxmblfb0YBJlRiVvGyZ9h6BI3hj1IeLf0DHVrY66IJJC55TKwdzY
         yQ50waToML6Z9nemvVRtLwi5WIxNTijHZnwhZ+aWUHv3MiCIJbJo3GTsZiDlSPewsCh9
         5utQqlMpKq8KM1o/zCve4+TOmFKwD9lmThK2zv/uQhYYzQjFf1tVFkX0qaR4f6ynUOXV
         Rz3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N7mVPwTmh9bqgLrgCUfdVXbX6OgyYF+AtXgSX7/zubQ=;
        b=YT/Camr3V2aXVCuI/wfCgGKvaQPeFzioCRMZcYjxCsXVc4ap9xWlr1ernIJKH7ntem
         GniWFtykPtzSG78VBOsoFkHeEukwl8iB63eFzixDaPyh9n11M1qltKK2aMgj+VVKB3+Y
         5XHtwDATQdikZHb+oDzh/l42wDye7SMUNidSq1JO1B6gCLKLv7Gm1UO1H9K48yNTmUdW
         jF28bwP8ihUcZICQcp3o/tbNz3ZIMQ0HQyTYSfc/M5UJiMIn+Jx2rDt/Ov2IIQKV7a6v
         dcLhpCBH2iNWGUnE24rrilmaSDXNOEdtSr93SzApzlgj7iG2/0TqH+5Yyiwl2WD44aO8
         XnoA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWkPWaQudpD4FQUkQ6bA5YeRrvK5oIKEuIRziIiYiLklRT3bTew
	FHq+a2RJhQYiGqSSyKfbC1I=
X-Google-Smtp-Source: APXvYqwSreFnbSl2W3UB16oaKhYKopTpkEExmFSlryRhx6HaQs9j9K39kk7fTpKv+TvTtMje+JxZjg==
X-Received: by 2002:a2e:9858:: with SMTP id e24mr16470947ljj.91.1562748270628;
        Wed, 10 Jul 2019 01:44:30 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:67:: with SMTP id i7ls138574lfo.4.gmail; Wed, 10
 Jul 2019 01:44:29 -0700 (PDT)
X-Received: by 2002:ac2:5981:: with SMTP id w1mr14030746lfn.85.1562748269865;
        Wed, 10 Jul 2019 01:44:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562748269; cv=none;
        d=google.com; s=arc-20160816;
        b=YSV1MBQ/WyubRJfb6swV/2DByOU3H2/KXC8revNq+Y+wk+2Ker4FIzuvFOpP0xVT4O
         ++xIhd9dyeInfGYPNQx6SzreP09MEPKb66yC4i1BF0WZ4N6gvwBgUMhOLN4e37nZDdRZ
         RWqwMorreewD4sK0KamFARGqy2+5b4R1PqTQP0KX7jtbnKkxOTu0OvXMvBACjM3hGDh8
         20LMRol2AxV4t6VflVbh2JHrLD+c/Cd3F0EfHzUA8Wq8yUOPXmv1ENyl63PJj3wf0uYp
         NAbNuiE6y6K4mxhoLnk2s8ZFf2jOda32Dp2flmqa6+eldfCQjui0/z6mlghrhd4tX5JI
         TdEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=FqMO8RT89OR9fNtMgTSxuVjqmXGyM8SsKk2ZzzmwHBQ=;
        b=rJ+UobvHpvHB9BOa+ZX4Q8zQODZvUIZxBsdbsJbdsr/wfZnt0mwlgR+obPWVDxq4f7
         kZbEobRQmX7NWjUneh7ke6iNtIXWwxV/sfpGJtjxUZtpXRvgaj3RJaDTR1eLSzJXTOYZ
         JMUEk63ctPYBWhm/K4ANFeyZkVfWzAn3c8okWYnG7Z256oDL8z13HpT86tq3w4MsSzN9
         nlooNPNwkhNf0cMLwbH1NP26h24ILQB4Kx7156J98Ut5KZ7ntwNMY7H9ilGPOmbytYXD
         Ap1u6fmJTsQA+LNubMks4nM4mr6A1WhlkOErY/F+cuFfdSPuktfWrajGApxGjK6f7ZLN
         pZTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B5fmBwnA;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id s14si84649ljg.4.2019.07.10.01.44.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jul 2019 01:44:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id 16so1219013ljv.10
        for <linux-ntb@googlegroups.com>; Wed, 10 Jul 2019 01:44:29 -0700 (PDT)
X-Received: by 2002:a2e:8455:: with SMTP id u21mr13239478ljh.20.1562748269260;
        Wed, 10 Jul 2019 01:44:29 -0700 (PDT)
Received: from localhost ([89.207.88.249])
        by smtp.gmail.com with ESMTPSA id y15sm256050lfg.43.2019.07.10.01.44.28
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 10 Jul 2019 01:44:28 -0700 (PDT)
Date: Wed, 10 Jul 2019 11:44:27 +0300
From: Alexander Fomichev <fomichev.ru@gmail.com>
To: linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Cc: linux@yadro.com, Logan Gunthorpe <logang@deltatee.com>
Subject: [PATCH RESEND] ntb_hw_switchtec: Fix ntb_mw_clear_trans returning
 error if size == 0
Message-ID: <20190710084427.7iqrhapxa7jo5v6y@yadro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-Original-Sender: fomichev.ru@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B5fmBwnA;       spf=pass
 (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::244
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

Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190710084427.7iqrhapxa7jo5v6y%40yadro.com.
For more options, visit https://groups.google.com/d/optout.
