Return-Path: <linux-ntb+bncBAABBD5X66CQMGQEOUTYKIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A43439D794
	for <lists+linux-ntb@lfdr.de>; Mon,  7 Jun 2021 10:40:48 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id h4-20020a05620a2444b02903aacdbd70b7sf492037qkn.23
        for <lists+linux-ntb@lfdr.de>; Mon, 07 Jun 2021 01:40:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623055247; cv=pass;
        d=google.com; s=arc-20160816;
        b=o+eczn3DcQroXSpwjOYrvYKXtf7RjQ0E4LiBtyRky/2FktwCSxJ8baSS2mzFrml7/g
         IPB3MhaU2A0k4R6G0HBIlhoqtlB8G2P2rnKxMhAaPawkmFYdx8oLgr5wsLcTDFq6ALop
         WAYK01rkrYfkj7zidICaYm1XNqJAFLTy3p2mzmOYkcjkPskpZUKTJsxMyux/pFsXY9w/
         tsqt0BkEYCxot8sS9aWlFSKo1ltWdLWzyy17VEh9+iOkckCnyysUb7N83mYLit9LaSCF
         PZKk41fLewOgK/pNKVvFax/TsIumEEnbPNDkNwPJbEPmIl1wn7gNCauWfFZwSXdiBsMC
         oZaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=YIIjQ1q/tJhlWDw448wyiK6lqmOvm+Rn/bd5ZxP8t/c=;
        b=rLBGorWLzede5NAlqbIFSsbAWHnrjd242IXK0hnx4Mi6UeswgtGpzProCpDMFoAeQ/
         wJl/p5du4dVR+pqbixbrBqVAd81s0N/WE05HLgBmLn6u3t43YbuNhcdKzF4DsuX6LdSM
         r9mwI5iumTyR4hUq2JXUVUXUIUKfHka85CgODBsw5SG7P4olk1IkV+hZT22dHmBNl1ZU
         N9LxsHVdcMBmJ2L1kZ4DUOF3Aa8Rf+9nB6SU3PmIa8YCwTn7b0R0G55t2qUiIrf51COi
         ufcIKhAn+qtxIlP3/B785kGGKVrCH1bf+NgDqmL2+QIGxIzlZzCJc1Mq2wBVvmqHO9N1
         z0WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YIIjQ1q/tJhlWDw448wyiK6lqmOvm+Rn/bd5ZxP8t/c=;
        b=ryegAEHdQCF6eTQZn1GjGTkTK2MQ7+eRKmwufPOXrz7lemjW6b8tqG9JXmgTi3eEfb
         QH7FtKzD+6N666D562vEG+Mb4X3nuh69jTBcyHdaCq8G0ZMM7wWa8wdmfJCMiVczMKJs
         Ml9X58RBEqv5iriPi6OlvfxSdE39M/ChEQrREaKykIepRum7aJ0Rdt/30qBK+O7qVcJr
         euuEysIvksHVzVAlEjz6VthAxXDg2hcV66SKkmfLcEz7I7Kq48lZMpHZaF1Cb6/9Apit
         o9dE+qt8oHU8hsHPo95KNdT+8lkbLwv2q0zva4oFkEzrFxva4sJwPOP6wLTY97Y1/wE3
         wMBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YIIjQ1q/tJhlWDw448wyiK6lqmOvm+Rn/bd5ZxP8t/c=;
        b=hToS6O7zpEmEqdsjIyLdnxrPzUEUWZgw6Y9Yt9dpupVwQfhe4cxOn6txPimW64/Q8z
         HtqRyPLQirFUsL7dn/nzVuYTEjgKdS7YmzOp+oiqs8bzJjqeRNEnjF+YS5WUdzLKeV8S
         olKHEE1hv/Ha7zXlZcj+UekCXZfL8tE1r7q4P9uvWbB3Ognr084REZ8zSV0BmrYdoSrm
         nN0LcVtDP6UMbjxW1jPvF9zbQvN0yCBWSoQBrGfFn+mmObrxT9KLl2P6QXWHIegyFlTL
         3Jgj3/gTes3ffWoD00h1n70RlRfglNj4Gb6wR01x7ZKu911cOEpYWFcBIAWE7DKxgDAn
         Z8+w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ZVZ+Dwg5n6RG8VHfAwhASMcUoMrxPJSAfR0NuZuPfDVIpI6Bm
	QjpeDuymHXCRlsRckBjBrvI=
X-Google-Smtp-Source: ABdhPJyIbo+3No7NfVzV4sRoO0jFlmIyithVrUdbQY92g23VoiTlaV/g27rmkyptYL4yLZXOLSSPrA==
X-Received: by 2002:a37:a147:: with SMTP id k68mr7879611qke.371.1623055247119;
        Mon, 07 Jun 2021 01:40:47 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:59c8:: with SMTP id f8ls6108384qtf.7.gmail; Mon, 07 Jun
 2021 01:40:46 -0700 (PDT)
X-Received: by 2002:a05:622a:348:: with SMTP id r8mr15714688qtw.359.1623055246736;
        Mon, 07 Jun 2021 01:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623055246; cv=none;
        d=google.com; s=arc-20160816;
        b=JliGgLxMqzK4B5AViwQrA2cuz6QsVuT9QXqagmditr7llcYyqAStv+u0FtAR15HSZ5
         xhAydrDx6U/kwfC8S/B4UPovmCbFJB1UK1mCkD7Vovh6J4kYUsZ2+/OiqXZ7plVSYlFf
         eWqd0xR8DzJxy6iAMPxI0A3gyu06b6An/wEqDQYh8T8r3Gw4xqpEz2rAa/6t27UWJIKb
         QBExIW2sygqvhnJd7iCXEGlC/EPaCCLJT0dg18czrcwDHaDVBUWqg9ucurQEVwOzf2vq
         Z93R2XlsV8zv1+NGivYNadSl6Etg9XpLF/FEyOnzsyqUkOA3kld34xwRGY8zCYyn6o2c
         VWLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=3agjlmS/4/QCBFAH0VR8xlPJmX7QeJESrfPnf5h3xUI=;
        b=R013YBwT/Zqw3RAtfFDzR2FibmLLapnSr41xV3YyN0GMmUV3/1zwqsUFQ4hEWlZ2Ek
         F/VMtsSWUr6f3kb6+TJDIIqxXjnO+H4ka5SmFxG1jQbmP2R3HCeOVh+XlfM12U69CW/i
         ph6Jap97OQBiU9mFO6vjFA2O/MQ7qHP2HxUKPa8MTkOaRzYFWox11F4h7pRy53PuidZy
         4sX+/kHbBauIiXE66kiJlL25A8E8XMlSn+pvtnXbqMPm7nKp/YCVTxcssL541PnLReMo
         H2wI23kwBQ+Wky7WRN68HJpDsaW56JsJrERaRh5iLk0PA8FqvCOMnP8DtQZ8sRuJbKs4
         ds3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-130.freemail.mail.aliyun.com (out30-130.freemail.mail.aliyun.com. [115.124.30.130])
        by gmr-mx.google.com with ESMTPS id x24si1321644qkx.3.2021.06.07.01.40.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 01:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130 as permitted sender) client-ip=115.124.30.130;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R111e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e01424;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0UbaGA5H_1623055241;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbaGA5H_1623055241)
          by smtp.aliyun-inc.com(127.0.0.1);
          Mon, 07 Jun 2021 16:40:42 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: jdmason@kudzu.us
Cc: dave.jiang@intel.com,
	allenbh@gmail.com,
	fancer.lancer@gmail.com,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH v2] NTB: perf: Fix an error code in perf_setup_inbuf()
Date: Mon,  7 Jun 2021 16:40:36 +0800
Message-Id: <1623055236-97905-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.130
 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

When the function IS_ALIGNED() returns false, the value of ret is 0.
So, we set ret to -EINVAL to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_perf.c:602 perf_setup_inbuf() warn: missing error
code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
---

Change in v2:
--According to Serge's suggestion, set ret to -EINVAL.
https://lore.kernel.org/lkml/20210605180554.ql4rhpukj57ujkxw@mobilestation/

 drivers/ntb/test/ntb_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 89df135..65e1e5c 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -598,6 +598,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 		return -ENOMEM;
 	}
 	if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {
+		ret = -EINVAL;
 		dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
 		goto err_free_inbuf;
 	}
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1623055236-97905-1-git-send-email-yang.lee%40linux.alibaba.com.
