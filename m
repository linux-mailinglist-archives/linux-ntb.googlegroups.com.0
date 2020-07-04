Return-Path: <linux-ntb+bncBDV2D5O34IDRBT7W773QKGQEUQE3WRI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A9E21435D
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:45:20 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id k10sf23867295lfk.8
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:45:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834319; cv=pass;
        d=google.com; s=arc-20160816;
        b=W9BpeBDslp9dVzF+d/VCabyzq4LnSsx6p6gowl5Lirr5r4ItWfP2cJ1BEFXQ6VmkHU
         0k1Hg+jmbrH9dla6yCVXZC1NtipT23Zoi8583ZKb5AntZrxqXD44r+7su81KThxxeGDZ
         CNUh+eaFU9dOCZG40x/jygoGCtFFaWQS8+ea0I25DMfOc5Xk6gLFBq2T4a+b2l/Lrzwr
         rM6ZZ4TQ1Jv1Jb2cLj7VmAf/lGnQ049zjIHJR7e8uG4sm35kF6cU6c+gkI3zxLQW/DVe
         5waM9P+zon8WcDR3xX2x2JejnrexT1wVCGey7C+DNRsj3Tp3Hz8/1PqCWtLiLE+NYOjU
         3mbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=sQvc1iYDfvLWMS3Pq4k4cBbEOWHRtanFQTA2pMGVgdM=;
        b=EluVKdGsaBJcI5stuhmtRRApfyRc/pCwN04W2BTJDw/s3ZercbgEq/T9ot6Ul9ISgV
         epThOHLwsRDp4/+Pg+fiJXYnSFP8TNJXcQEBtOGCB3fuO4LOe6ek8CJPYT92+JjpfJ+F
         NlY48pj5zTNNj0pittAzivDcQoXcagIjjtjZR0ynxT28FCh5s609vPtSGGi7x5ZXfVD+
         pK0os4YxTRvC5tJa4qyHTrU4FYJWYCwAoRrnvsD2Bbj8IWkrVsLsiNOeAJpNtQzM6BZh
         g2TfMrcJWdcVlscxeXHgkGPh41Wj4yXg4qDXj9Z+Vc5nqff4RMnntZ6d2wtDyLrHocDx
         eXDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=RWNe5fwb;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sQvc1iYDfvLWMS3Pq4k4cBbEOWHRtanFQTA2pMGVgdM=;
        b=oPUyfGqnLgVXBEYHDB2Qzq6QFA8GQrokWWX25FafvC+O+o3MYEp4d0xU8zA84Nhdq6
         i/XI8Q3I5JotQW/1TuYb193FuTOtu7Vi1IrAbgMaVbmkPChGuKeUY96970nzNnNKTL3j
         N6cCw4BXktQMpDmuX34OQjoSYkG2ZBVwWToA53y8toiBKLoEWTL3Qk05gW8NQc+1cyZu
         TCOjS1OZPAxIimnQhUwJxWkCdLqubuFPFH8UXF8mpSLPWDoejRJs6qcBJz/TdwzrPWKl
         CmMp0gDLFHnwL3ufQB9AWhh4NDyBhaH0Xa/R255O7mqZ7oGaUSKl4ciFv9CAoHzfdLFH
         pS9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sQvc1iYDfvLWMS3Pq4k4cBbEOWHRtanFQTA2pMGVgdM=;
        b=KLWQZaeeSTDwwPWVMQcGUgdmn0th0d9feZDvNGqwZey4rezDKDGreV6YVlpBWG+cbI
         VvKocjOcjQWDZaH3pUdq3uFFskGztoeF7QggBFt+9ZjDXDJoEbKbGYTDotSwjjrkJytn
         b0n4atyJrJn0iIp4NEG2meq2tbCyg4WgrnM9znelFi5Zli3todFtB0oNOMf9O0xdm2KT
         tLwefPCmnYZ4YjFZVv/51PYdLmcjBGdQ4dvoog5Wv0gcmGLc0zPkV8bPCbm3hLG7Ly6W
         DXgNjtPJ/tg/Ee5TGCvFxtL8ftU7JJgbtKZ4ABe5YFdFaLvz0ib15+WcRkWWPf1S/8xt
         gGFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531QjvzoQl3YW4ufo0jAcRpT5eaQ7jDBJeKT7AJJo9YSeHEYeBVq
	OFHy2PMBmD2DaizlQeH+rJY=
X-Google-Smtp-Source: ABdhPJxggVQaa6frZo6sv1tRHDkxF3ykhF/GHLg0IX292cCTIiiBoKqCFtr2d+MCgKIrGJjMPZWXnw==
X-Received: by 2002:a2e:9e87:: with SMTP id f7mr22447640ljk.44.1593834319673;
        Fri, 03 Jul 2020 20:45:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8592:: with SMTP id b18ls275586lji.0.gmail; Fri, 03 Jul
 2020 20:45:19 -0700 (PDT)
X-Received: by 2002:a2e:760b:: with SMTP id r11mr6955575ljc.285.1593834319114;
        Fri, 03 Jul 2020 20:45:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834319; cv=none;
        d=google.com; s=arc-20160816;
        b=e07+SQ8D9qCi7mpN//+dp0a3cT6aJSkiQown7s5/qatYlkW9J0RoEe0DB/wOPzWg+H
         QGnQy+MShYOIfk65EKIRlwncMCGj2DTt9xqTpMRR9NDW49YLV4hQeSZ71zK/cobH2tVY
         ecU75+2ZyJYx7nqNVdSBi/OXtXImAlKyU4aCHEwLLPEimZ+UYrC470qm/tjvQJtaqR8n
         K8eA/NNIrZ0DOD22YbZHnpJLSHmEy0vHwxmisprqGFTMOs/xKY2/qi35rEd+UIyJJQg8
         OC+gWMa6lYydQ1yyMi2Zff9ifO7CLWnItlSlB8NAFxP4z08yve5r67e/3rroXtA3+jRe
         v/Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RjgXbItONDI8qoKZoagX/7fm2XOCDVB41PDHOzajmYk=;
        b=gp1UnvHoWI30eBnQQ6g92jf0bLSkQKltvCgCV8pJTlWMTX0b4AmdaSs6a/FxVffElE
         MIeGeJpaAwXD9Pr4j4PY6NByg1XXFIYV3yZEoR0TH9sPQuAF+b+k7H3T0Kt/F0BQvDkF
         lLRLbHaRIeokQerH+fL0rmBzv+pbcJGSz33VQL8m3dS4d6C0XcpFOxg3AKU3yQ421iSY
         RM1jxi5T6miZddiwnkaKluQ4RBmeMvVt8jmNLs+yg+qA4s7hYIzcurxNrC5gOtU5OUr3
         8TqlnF9Ubc6iwEyeFTj46QGLCv/2EXHwF2zjCY6jCm1/zPdBP/JoaTXY76YXf3a7hT0l
         5LVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=RWNe5fwb;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id i66si361030lji.4.2020.07.03.20.45.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:45:18 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ6y-0001Xb-Bk; Sat, 04 Jul 2020 03:45:09 +0000
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
Subject: [PATCH 00/17] Documentation/driver-api: eliminate duplicated words
Date: Fri,  3 Jul 2020 20:44:45 -0700
Message-Id: <20200704034502.17199-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=RWNe5fwb;
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

Remove occurrences of duplicated words in Documentation/driver-api/.

Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Vinod Koul <vkoul@kernel.org>
Cc: dmaengine@vger.kernel.org
Cc: Luis Chamberlain <mcgrof@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: William Breathitt Gray <vilhelm.gray@gmail.com>
Cc: linux-iio@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Vishal Verma <vishal.l.verma@intel.com>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Ira Weiny <ira.weiny@intel.com>
Cc: linux-nvdimm@lists.01.org
Cc: linux-usb@vger.kernel.org
Cc: Eli Billauer <eli.billauer@gmail.com>


 Documentation/driver-api/dmaengine/provider.rst        |    2 +-
 Documentation/driver-api/driver-model/platform.rst     |    2 +-
 Documentation/driver-api/firmware/built-in-fw.rst      |    2 +-
 Documentation/driver-api/firmware/direct-fs-lookup.rst |    2 +-
 Documentation/driver-api/firmware/firmware_cache.rst   |    2 +-
 Documentation/driver-api/firmware/request_firmware.rst |    2 +-
 Documentation/driver-api/generic-counter.rst           |    2 +-
 Documentation/driver-api/iio/buffers.rst               |    2 +-
 Documentation/driver-api/media/cec-core.rst            |    2 +-
 Documentation/driver-api/media/dtv-frontend.rst        |    6 +++---
 Documentation/driver-api/media/v4l2-controls.rst       |    4 ++--
 Documentation/driver-api/media/v4l2-dev.rst            |    2 +-
 Documentation/driver-api/ntb.rst                       |    2 +-
 Documentation/driver-api/nvdimm/nvdimm.rst             |    2 +-
 Documentation/driver-api/uio-howto.rst                 |    2 +-
 Documentation/driver-api/usb/URB.rst                   |    2 +-
 Documentation/driver-api/xillybus.rst                  |    2 +-
 17 files changed, 20 insertions(+), 20 deletions(-)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-1-rdunlap%40infradead.org.
