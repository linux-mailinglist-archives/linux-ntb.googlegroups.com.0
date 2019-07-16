Return-Path: <linux-ntb+bncBDE55XUH3UHRBO4VXDUQKGQEZ3SIJII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 090766ADBC
	for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 19:34:52 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id a19sf4722413ljk.18
        for <lists+linux-ntb@lfdr.de>; Tue, 16 Jul 2019 10:34:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563298491; cv=pass;
        d=google.com; s=arc-20160816;
        b=KUsovFqcEsP2LVQXzxWFWW1NLq7yUV3J6miYBbI+cFf2kweV/QtQLTLI6CUtre8L1L
         g2rXVjV5AnlU8flffLIeFhHUjRaaBXEnEfXrG789pTB8xnbJ4IoNV9mnSTHD8MuhU22i
         /r61nfIqR1vO7hWpPh4iF9kkjhuw8qH3i2/JRpGtUoViYa6UG6QceAcwaKHe2KChCGqP
         3Ar6mLWfvwtKW1pTaxl7Od99Tn+oZlqF++ZuYIN02cjJL2JB1tzfMXxtWsW89q4BFqca
         oKwnRXII0p519V2UOkcaLIiIBHFfCdN7y6BQGGD3rctBNkAIFA23dX97uMQqceJSOFY+
         alvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=CqHSrxM1yJQMTneugRPuACEFsW2mBKCLO1lpscMQgUk=;
        b=PdLOf9pr6wLuPD1x7qIyZgQJ87hUckBgnVM57BdWVkGTSMmIvQonFtu7EBcMQuhKAn
         AtoicTV5fAeCyLylfztEyYmCGHLnh+5zd77s90xDwewNr4IQIwWVDUY6UDfWiEEl0Pf/
         7KwWz0OGtCw22MUK5rrOK830szBNfcbT+Eb1YtSbekcJyRFTAk/9GN7N5JD7pdje7cs+
         bnl69dkucif8jMqfWR7DJ2UGpaRz0zBMZ6sPoPYp+aYYX8ttXnMg8DUTEw1mfMspkwF8
         CC+7TrDLS1pV9qCGUuLGiEzrusfCioma/HJrHzpjoeld46zTJ8gS9WdVf0Ev5ZWWL1QM
         h2rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RviBK+1m;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CqHSrxM1yJQMTneugRPuACEFsW2mBKCLO1lpscMQgUk=;
        b=XJg+uIigdduaYHDUf8XviphW4dp3yg0LGKR6pqoAtf7lOMN51H5Z1QaSunkMmapZQy
         mnHy5q56haeRtyGyPIB72NLmRsFT2DgrEWUBoyi4bp2rx8Q2+zzOYYoeWImY0hRR9YPu
         bTpoCkflpw/chmEGDIyy1+Z+C72ZccPmY3prQx4/u3SWKZ0BImSc55uFtLXzGBHmyQoe
         ZRv5yiHYIGr3WN+AZUasyb3BiSj6mIcG6RS+myiJhi5XnXApdsuqS4S1qfx1rfugl0kj
         TkthJA1a04oBkKj4+dtNMNk9fvVATYaeqaQLhJj0t99JEF8XPFWr52BYrsTY4f3TCxft
         WGTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CqHSrxM1yJQMTneugRPuACEFsW2mBKCLO1lpscMQgUk=;
        b=g7cSzOp1vJd7syrkyyOjAwQVN4P+iM5dHkBgOLVytG/wxShX/31FPJfaEslDTVkYnw
         zMVJjiThOsxasM3BEughSvGC5WPktBYnSwltZ86R2yiOJ5la2CkxZ5aq3FkspZ2COFE2
         A95Qqv8OaaSL7okPUuxPjeIl96R2AL0W66Vg06C3oQgKP3gVJRXkgBQ98HU2oUlyjyKr
         Zzs4+Lzgqw/1HsaO3TLaPwLnnkiymho2pN8/7kANUX9xxRgAlGOmMn7cfljkltwb4hX3
         qxm+sHQumqd5m2J0e2bPqoSbMzeNYSRXZCECT1cqYQhAQkM7jLqDuhwWHExf8kt6GnRz
         D5Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CqHSrxM1yJQMTneugRPuACEFsW2mBKCLO1lpscMQgUk=;
        b=pMxJ7F7gxZQ9BXxWMYF7hYY7kTjjqAGKyvnZp1eRaAm6qagKeHqMnFzvy5eu8H8xZY
         E6czPaMEW6YcV093t3cm933K9vYqSQBDcle/BHJuR2jrlLjTDS98U4s0prDUtk8r0+s3
         UQ8d9KRNqrzwdvL351uxUmQusOYh92DE3qjH9qNDNAi0EDqqsQDpOxvCqdUW2rq1VLFO
         ur24GpeeVEil5x3FrML5j8bO+bLOBTLrS61vycxioIVvXt/DXjTdi+enumcmwWgj7Rt+
         4PCoX92TPkYZenLR1frWikKnQhIRF/Bvzi6dX8Z9AXLmoCgLju0pToVb41yn/31XQm+A
         kDyw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVeCzRFJGk4sLFHmLiUYAA49O3y/l1mU5HccntNYqjlCSKdFwYX
	a8KxjWuthL6oa159xgXhR6w=
X-Google-Smtp-Source: APXvYqxv/YvMzwTyhVe3NZnv2JUq0d6n5tHOGhfGIb5bMrfJ3XMutZZDNwOIQI0gMGmRSLOFNHUFrA==
X-Received: by 2002:a2e:9997:: with SMTP id w23mr18547389lji.45.1563298491621;
        Tue, 16 Jul 2019 10:34:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:4c2e:: with SMTP id u14ls1713416lfq.15.gmail; Tue, 16
 Jul 2019 10:34:50 -0700 (PDT)
X-Received: by 2002:ac2:46ef:: with SMTP id q15mr15659119lfo.63.1563298490955;
        Tue, 16 Jul 2019 10:34:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563298490; cv=none;
        d=google.com; s=arc-20160816;
        b=eZgwVcrsY+rOY1d/GFFkBeQAUV1ykYVLUmYRwbq4nhP9b/T0PTvIsVqNQfSoyU8Agc
         eR/6UPiCrVWirmbPux4TLIFW5QIeu8YYX5Bb0PNBPa7d0ThpgjLb177ZF8NXPYKj6lvE
         qJMiE7Y23tHvIiynNQA0MpnK0QLRmZt1PaKbAFXMvWdiotFHF1cZt+JMpQ9fyrj8sLX7
         9nG/NoL23uGirsJouKu/V+YE1P4ifQ8rtuse2U/SDXFWaCtC8VlGJqjRS0aQT+NT8yxK
         ZGqlIlnSKkXu3Y6A0fcpicAyy1KMbBVgdf1oQqK9ANYzG17k/edqQF++Cwfu161YO2Jv
         Zp0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=U1ln5M2Wl3gVsjRqvWLCd4oEQkwWlQsy/9s+22rpX6w=;
        b=rzpsXNvk3ew2fM9ojTwvFwXANX9cX1Mn9qJf5Fnmt6Ssl7qKrULwUb2NJSKyaBWi+O
         7Ed2uqMpl0LuI2HNkFNjIDZZWtz6Dn9UJa5OZo2ANk4HT974UH88VSYu3I8TWVnlngn4
         fhEPBOHqwzfZr7uzNkk+9pNAZC4tmdVJkGO9MzjvRw+3rhVTdV0+ivXBgB2e4UwPEUuq
         5wVyRSnVxnMbcc81//wwcLXlHl995Kp/iDblAgKHoRUBuY5mKC3Hb3y+GRvWmr7qahwf
         WPjDQ9ljvTN2zG17O97T/UvR1FhFbFY4YwlyaqQM+pFc/oZSsywQfVHGwsyx1G05x/BD
         sM8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RviBK+1m;
       spf=pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=fomichev.ru@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id z18si1055370lfh.1.2019.07.16.10.34.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jul 2019 10:34:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of fomichev.ru@gmail.com designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id x25so20813393ljh.2
        for <linux-ntb@googlegroups.com>; Tue, 16 Jul 2019 10:34:50 -0700 (PDT)
X-Received: by 2002:a2e:9158:: with SMTP id q24mr18457905ljg.119.1563298490308;
        Tue, 16 Jul 2019 10:34:50 -0700 (PDT)
Received: from localhost ([89.207.88.249])
        by smtp.gmail.com with ESMTPSA id m9sm3278678lfo.45.2019.07.16.10.34.48
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 16 Jul 2019 10:34:49 -0700 (PDT)
Date: Tue, 16 Jul 2019 20:34:48 +0300
From: Alexander Fomichev <fomichev.ru@gmail.com>
To: linux-ntb@googlegroups.com, linux-pci@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>, Allen Hubbe <allenbh@gmail.com>,
	linux@yadro.com
Subject: [PATCH] ntb_hw_switchtec: make ntb_mw_set_trans() work when addr == 0
Message-ID: <20190716173448.eswemneatvjwnxny@yadro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-Original-Sender: fomichev.ru@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RviBK+1m;       spf=pass
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

On switchtec_ntb_mw_set_trans() call, when (only) address == 0, it acts as
ntb_mw_clear_trans(). Fix this, since address == 0 and size != 0 is valid
combination for setting translation.

Signed-off-by: Alexander Fomichev <fomichev.ru@gmail.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index db49677..45b9513 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -305,7 +305,7 @@ static int switchtec_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int widx,
 	if (rc)
 		return rc;
 
-	if (addr == 0 || size == 0) {
+	if (size == 0) {
 		if (widx < nr_direct_mw)
 			switchtec_ntb_mw_clr_direct(sndev, widx);
 		else
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190716173448.eswemneatvjwnxny%40yadro.com.
For more options, visit https://groups.google.com/d/optout.
