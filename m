Return-Path: <linux-ntb+bncBDV2D5O34IDRB67W773QKGQE2KJV5EQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFAA21438B
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:03 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id b8sf20449619wro.19
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834363; cv=pass;
        d=google.com; s=arc-20160816;
        b=LS8/zOz65JZa1py/0PDqNjOqE3BZgOZXA2xbNHcolVl+C0A1Aaye3l39Kr5xc/43m0
         yNOuKwNeigmXiOBqEyEfXVroPj+Wk1ffcpUlw78BaDnKS0fzdyByRmn1v3rDSiKIWWC4
         aHYqj4fGfBqMiymTNxMnBFVvluWdSDtTuf/pYrYsBuPxaM1UXrU5snJhHgwyfvhp8rDT
         RhEc1md17VkNTumqo3rNxwWGQh9idXrpk5xEyT9g5LcP4SN3JLutugwvzmckmeNochhI
         Q+dEJ0+dVqrq8IYLcww2mk0LuG5MrIwoLv9eCgoKW/hIwsKuYtHIiWmeogea5kRA2cvC
         69jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Bjk39TpVJxBddN6CzG9nOcRCxfALXJrcdXEsv/E4mbE=;
        b=GbeBSSmxWrISCdglfDd1yYYj3uqZ1ZWCT2UD7Vw7GFSj6nw/iwGU9uFvndTUbXwXwa
         kSUP3mj/DdfU17uQkfoRicrrOiBvlEgq02LEWexXiD3kDWHZc6I1GKMOEoE6fY0Hdqxl
         8t2w3XsJx6/7zHIr9DEzEl/EPoYFngEXIbeiYvZ6RMXsEQcpjkpcsHbgZr4uQ9GY/O0N
         8hn+b505kn8LSkCHDOXUzt6Mr8FAiSTW0bWqmIBs2AtK2oVldtx5ieERC+VOdvxRNuTY
         OhHNdxux8eT53GUNI8w/RCznbNG/Kvr+A0TcLPncD+QiNa8JKi8wDOi7HE/wXsp15YYm
         yajw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Bf7UEtxc;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bjk39TpVJxBddN6CzG9nOcRCxfALXJrcdXEsv/E4mbE=;
        b=rtjPk5JdUx6zszQkJx8ZraomLSa9WxeEZdr7XQeP3IK+FBVvPEFhTw+yoYWW+K6+8Q
         b/PMe01hMIJP9i5IOhJWmMsxfFg7OLMJcip1RlM1EkuxwR7DK12FoVfukKqLsIAi6I+/
         dkB09NCsVA/l7TJ9sLJlcaZBydB9OG9CVG5Rs7APntKm+E4qJiq5svOPe8bLnn61VoMk
         hEuDhxete2gf+nV/p7uKCXif5Kjl/18+FJ9I76OMhjgLvo31FI8ZxX8xrWT+0cXqasbt
         Fcug0jET06mOdYokcMLLvBOrUINqnG0A/V2wmSKN/ktXtrk9oHbSZ++tSN1EtZQaDD9a
         Umew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bjk39TpVJxBddN6CzG9nOcRCxfALXJrcdXEsv/E4mbE=;
        b=ruWEhevTpBWEmBeYWy9Dy/c+wo/cUsl4XvJGpIUJzPzT+AwrZ14N1bRCflsSBuparx
         uP6k0SzHhiWWDGtHf/pB/9lU4n4MM6gnpt/Q5fygooqe3ji/vP7TJaHMcnJ0yKNRgsjQ
         h7s4CS9gjmEJoFC7HgBEfjcK4KugdtNFnzRtaqMLgSXoo85yUWDrz9E46t/j9yKaQ4JO
         crHJVwGb/9+mkvEXfiRWCR9gcA4hva6oFahATgLUPsYoom6I24NhKiuAtIN+Dms90hG+
         o28PB8EOBlzA+zp2jDwkknbd31PzSPFZOjw+C805nPXO9eQAsqylJormUeDlaWCmNevx
         HFjQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532w/FO50Fk6PmpaXaOyvnQ3+mzSPrT/g8mbUMUSpUZK3jguKuZE
	VY3mlqF4f1nVsfrAnKnLGho=
X-Google-Smtp-Source: ABdhPJwpLBhqP605bwHSCN+8nfwWVfci8aFEKeXUl8w157J68ZAWKEwEjDShxxbW0tSC+LcS6Q9pjg==
X-Received: by 2002:a05:6000:d0:: with SMTP id q16mr6204920wrx.166.1593834363671;
        Fri, 03 Jul 2020 20:46:03 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f58d:: with SMTP id f13ls3033771wro.1.gmail; Fri, 03 Jul
 2020 20:46:03 -0700 (PDT)
X-Received: by 2002:a5d:650e:: with SMTP id x14mr41305518wru.187.1593834363244;
        Fri, 03 Jul 2020 20:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834363; cv=none;
        d=google.com; s=arc-20160816;
        b=lOXujq2ovzGhI5nsVMKsMfrg9mo7vQv4n9xQ8c78aJ8mj2cLbndf4CwtDmZNMvnVSH
         z0UVaJAP06bCMkR1BiEcc6nIAs20hiBQEMEGrlEGLhphwulHt4zYkSZLgQOGrrMQ5Sg/
         K0MQ92MEA2BkcbXBVlRgTsvO4s9YiOedFD5fhqZCemS79q6T+ILf1tio9qpq0jW+KZ5N
         xHJcUw72wSrtFZg6svz+cvfWopkPfZeQc8FpSbZhzJ1TXGqNrCb6FxvE26z1x4dHEKOm
         L77aaZZXqgsEl78/iLkvrX6V1VtdkWP+qkUbWLj/oYAS+qN6lCL6hqF4EbdlcJYPNEal
         vy/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=r1aEn+t8j2wA7e0I1OW+BPLKTMMoNGZMWbd9fmMpZqM=;
        b=Ws+xn2nFLxVvKMfZ0+DJ5wBgjbW8rBTOhC3Xuj66q737snOcCFWuYlpfUTaVM18Val
         6dGDeUpqiSXWFUihsGLfEktILS9HfvICCiROZVOMXgyiZ+OrLWAjFTKUcTM+7us02iS1
         9eVDI8DJOFsaO9p4aq0Cc85HelHpWKXISowKRFgiz3yETj3xZSEGVNVMET6fR4lqDPyX
         A8tdvord8rFkiT/0KWo4n9Ah8JS0sqkNI4u8odS1x7tq6bVgN8vLqrjVEVOgLK2AWzs7
         g+m9KYc5vFhPHn0PVljzKzMxGSTgpLd/u8qMGMn6Cm/ydD8KP0AlGEZjyXXBWap7Wgab
         tEBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=Bf7UEtxc;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id 14si778904wmk.1.2020.07.03.20.46.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:03 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ7l-0001Xb-2Y; Sat, 04 Jul 2020 03:45:58 +0000
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
Subject: [PATCH 09/17] Documentation/driver-api: media/dtv-frontend: drop doubled word
Date: Fri,  3 Jul 2020 20:44:54 -0700
Message-Id: <20200704034502.17199-10-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=Bf7UEtxc;
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

Drop the doubled word "errors".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org
---
 Documentation/driver-api/media/dtv-frontend.rst |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

--- linux-next-20200701.orig/Documentation/driver-api/media/dtv-frontend.rst
+++ linux-next-20200701/Documentation/driver-api/media/dtv-frontend.rst
@@ -244,7 +244,7 @@ Carrier Signal to Noise ratio (:ref:`DTV
     Having it available after inner FEC is more common.
 
 Bit counts post-FEC (:ref:`DTV-STAT-POST-ERROR-BIT-COUNT` and :ref:`DTV-STAT-POST-TOTAL-BIT-COUNT`)
-  - Those counters measure the number of bits and bit errors errors after
+  - Those counters measure the number of bits and bit errors after
     the forward error correction (FEC) on the inner coding block
     (after Viterbi, LDPC or other inner code).
 
@@ -253,7 +253,7 @@ Bit counts post-FEC (:ref:`DTV-STAT-POST
     see :c:type:`fe_status`).
 
 Bit counts pre-FEC (:ref:`DTV-STAT-PRE-ERROR-BIT-COUNT` and :ref:`DTV-STAT-PRE-TOTAL-BIT-COUNT`)
-  - Those counters measure the number of bits and bit errors errors before
+  - Those counters measure the number of bits and bit errors before
     the forward error correction (FEC) on the inner coding block
     (before Viterbi, LDPC or other inner code).
 
@@ -263,7 +263,7 @@ Bit counts pre-FEC (:ref:`DTV-STAT-PRE-E
     after ``FE_HAS_VITERBI``, see :c:type:`fe_status`).
 
 Block counts (:ref:`DTV-STAT-ERROR-BLOCK-COUNT` and :ref:`DTV-STAT-TOTAL-BLOCK-COUNT`)
-  - Those counters measure the number of blocks and block errors errors after
+  - Those counters measure the number of blocks and block errors after
     the forward error correction (FEC) on the inner coding block
     (before Viterbi, LDPC or other inner code).
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-10-rdunlap%40infradead.org.
