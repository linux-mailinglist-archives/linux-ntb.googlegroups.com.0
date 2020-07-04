Return-Path: <linux-ntb+bncBDV2D5O34IDRBJPX773QKGQEZI7X7OQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 0946C21439B
	for <lists+linux-ntb@lfdr.de>; Sat,  4 Jul 2020 05:46:46 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id t145sf38185832wmt.2
        for <lists+linux-ntb@lfdr.de>; Fri, 03 Jul 2020 20:46:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593834405; cv=pass;
        d=google.com; s=arc-20160816;
        b=iL+k9MxfWYWN/kDggQHETsmjYYppXmydKB7D99nSf8wl32HrMioDg4gDXLOmSt7VTt
         fmWwLn/EbyKBjDf4u3u4XNW05cwG38Arff2XgXdOlpzZeZHFMT4Uihk5KPVOmV1pFrv6
         Fw7CwieN0HbtDHtQiWGUXGjjB/6gSQmnKBB4rTJPyqMOBOIiABwaUwFLdufyddvl3OIh
         EkoSDaipDb+SZDx9mRSTQh7dPb2yHb++AEMsVs3dBdIS9NFU49AYDuzNqDfSVl6HH5b/
         Xbol9NEL9zCZLe9XeVXIozhqFKxlCMA+LYOtF0iON/MNrtcOZ+THxxYvBbIXDrwU8rUD
         pJrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zCL+4nn+0tnGsGzeZpnBXyROgeIClYBU3laKfBHINpA=;
        b=KMNDixueBfvqyNhF4PkSqyYrSeBZCSl33D+JvvPXib+bMKmGNr6dNo9WDXggDnShDa
         CfKIV3WbxihD1yrT8y7eeky4PmgniqDB1v8zT+CFjjPRtvqx1LeVC56+x2A5Gx/dRQNv
         RAt0A+Grf0HEw8PD1ZKZQLOgR/AcTMJZLWe6MwJqlK7xI7rpdLSBwEonsQ24VImaQQlT
         tSWVWZVH/JPU22iz0+dCxxQPGoAc4c+20nelrBjdPAsDSLkQcBW3B2XJAri001Hc3zfO
         wv1j0SwrUA7UItIP6fvBbmwukmSXUpE4aNFEaAIlIMu+yoHcg/ikWFdrW70c4CyjUD2q
         NdBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=twiINFJb;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zCL+4nn+0tnGsGzeZpnBXyROgeIClYBU3laKfBHINpA=;
        b=UD80nErRipWQjqSxbSSxQ8pZQ4JBNrZCnS9LnnNHbo5UWI2ku3yNfw8fmeKpeLU6qr
         qEFVAwR481smR59INwJXD+uylYoN2S+yfW9lwlidJ1DAE/Du5d2VPiGh9HbMRPgjgV0+
         cl5BY8xlkqgi3O11NlE6gfxx+m1QuftuNWwCdoe8cyo+ozLKNyJOE3vTVJeZe6e3Jyg7
         zXk/FoS1PA3tfP+k7lLDYzcoZcoDIpH/0QIAFR6HzHV1QykO6x0NyIf240Xk+h9ZieRa
         zuLk/kmROM7Co2nwLzVJKwWM4OK4Krd/7l5TFDt+m472aZBAtvJ8COwNFZkY0aVeuVeD
         0wXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zCL+4nn+0tnGsGzeZpnBXyROgeIClYBU3laKfBHINpA=;
        b=LIsPhnxOBuy40ZQUxfK4Jo5X9fAd2tmvxxWNA/xXHmm5F2VWvqYY2qj6rFQnbcRmdF
         PJ46EycbGuSVjm1VUkkQYKKF2opbE8brAk22atVCEjwH3/Ds3RTZ5RA3CV6Szm+gtGja
         SWkQoKVEoE3EBUOuReZGqmKtFeBqW0Wi2l2pqYj2YQJuCcWz3vCLcpP/ep+oTkb+Kiok
         l6JM6fBIochn93pFz34V2x/cSgjQcfu72iD/qNX6MFuMHdLATSNwD+wj8RmyBfoIbsDR
         h+WWF8OQHT2iaIBPAp1dHgxsK/q+EERd4U3o5odpbc2qWCygTCYqfU5V4fiybuc73+4X
         JxIQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532zcBzNTZ2rrJwXegry9tzreCtNaQ0oI5g4cCXjkIgnwADzto2r
	eAeF0CV3nWfMZDgmDua7zk0=
X-Google-Smtp-Source: ABdhPJybUJRUOmHZWelnKJ9O8Dqpbg/VBQA2IG6h5hSHIlS/C5Kk1TD7pHfi4riDq3cXmMWSjBVPLw==
X-Received: by 2002:adf:9525:: with SMTP id 34mr41567113wrs.313.1593834405826;
        Fri, 03 Jul 2020 20:46:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls1739393wme.3.gmail; Fri, 03
 Jul 2020 20:46:45 -0700 (PDT)
X-Received: by 2002:a1c:2905:: with SMTP id p5mr27137219wmp.91.1593834405434;
        Fri, 03 Jul 2020 20:46:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593834405; cv=none;
        d=google.com; s=arc-20160816;
        b=MAvZrpkPpfc83OScg3XouN1HQ+v59jzQt/beV7gS1fwmbzb8tqlDn8LGek+JZe89NB
         F1Af8yogkdKvz+xx30G/JLcAP2lBrZGTppMq/GqGfh72/ZvTA+zk+0yk3PgXwxiN0LM3
         vrQy3fn6x3EBpnapMfs9CfPtBbSx7QJMxLkNIJFUwTKppHffrAbuP+ow8SyhYI4EaU0s
         XksSXF++gThqk6/X/52ijEUwT3E1zt1tVuxmZ353DF02xlb5mCdS6aSD+i4i4Lxv30hI
         TtdPh4fJbRoP0XKGeflp1N1Z3BEKjs/bbr8EezWk8mE1JQy4CfkgrSiG7AKIMkx/ueoM
         y9yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QMUoZdBV4wse9lG8bnGaYE8IXC2pAaw0z4G8gYRTTas=;
        b=Xilwi65W0esOE4dzEkTsRXwg9PxrDVsQ48bWPpvC8J8MZN2Djxml2Gu9BBHEA3PbMX
         DphJxCx2ZDXDkNCu5xtJ8SEhENoBrbCS6HtHothIJmV83et9uV1CNq7gGbx/JaSFV5Pm
         muIn+VbcwS0rNpOjaJzU83dMnehFe/LrWFskMGiy4rO3qAaD3JZs0tR1CkUJrpE4Maso
         pIuGV9MJbuN14S5cMasxTqpHw9HCQURgVvwmHYMOt9dfo3+K2H4afzUDQ//XsX1W5Xoh
         I2nUwSpXTgahjxjgxu1JtYowz+Y21VErrjrukcjVxFBVnRqVMhCOquwzfZFpSZ/aDlVg
         TX5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=twiINFJb;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id y130si1212860wmd.2.2020.07.03.20.46.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 20:46:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2] (helo=smtpauth.infradead.org)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jrZ8R-0001Xb-Dk; Sat, 04 Jul 2020 03:46:40 +0000
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
Subject: [PATCH 17/17] Documentation/driver-api: xillybus: drop doubled word
Date: Fri,  3 Jul 2020 20:45:02 -0700
Message-Id: <20200704034502.17199-18-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200704034502.17199-1-rdunlap@infradead.org>
References: <20200704034502.17199-1-rdunlap@infradead.org>
MIME-Version: 1.0
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=twiINFJb;
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

Drop the doubled word "the".

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: linux-doc@vger.kernel.org
Cc: Eli Billauer <eli.billauer@gmail.com>
---
 Documentation/driver-api/xillybus.rst |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- linux-next-20200701.orig/Documentation/driver-api/xillybus.rst
+++ linux-next-20200701/Documentation/driver-api/xillybus.rst
@@ -273,7 +273,7 @@ buffer is full, the FPGA informs the hos
 XILLYMSG_OPCODE_RELEASEBUF message channel 0 and sending an interrupt if
 necessary). The host responds by making the data available for reading through
 the character device. When all data has been read, the host writes on the
-the FPGA's buffer control register, allowing the buffer's overwriting. Flow
+FPGA's buffer control register, allowing the buffer's overwriting. Flow
 control mechanisms exist on both sides to prevent underflows and overflows.
 
 This is not good enough for creating a TCP/IP-like stream: If the data flow

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200704034502.17199-18-rdunlap%40infradead.org.
