Return-Path: <linux-ntb+bncBCQYFH77QIORB4HZ4HYAKGQEZNDCQTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-f188.google.com (mail-pf1-f188.google.com [209.85.210.188])
	by mail.lfdr.de (Postfix) with ESMTPS id 02396136E21
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Jan 2020 14:32:34 +0100 (CET)
Received: by mail-pf1-f188.google.com with SMTP id u13sf1242691pfl.15
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Jan 2020 05:32:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578663152; cv=pass;
        d=google.com; s=arc-20160816;
        b=js/mCE2i5sWVmoTyvxwI5TPkUtIOUoKvxCGRoE5RB79K3cGajWyjIMi/Kj5tAIuiwh
         2RRYsIx7+L/5dtaq+cuqoOvr7Sgc/jffvSiKxzWpNhM/SeyNuBSztsYVw2XBGXqwh2Gs
         aGVWp5tVCKuU1ya+j2IxNttk2W3tSkcmNrj4H2jyCqCcCT/z6zA5m+NPICO4klOpANr5
         01Oz8Eft9RFKYXYqxUxXAiTitva6LDfUYDets0+MpuZw9tiaW6avjUvQKkjH+enct/7m
         ft5/oZomXgu2hpJD8NwkHy5RVzVOhCngFXf1qI2dbhXfyfaN0JMX68jWHEWNf9CynWLr
         lHyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=gU8HDfkd8JQXTH514ZmsGPskRC5BhJSe7a9lSVqHcrg=;
        b=r4DiY1n6+5mIKBzIUZxxdBtoh5CINazQPCJcy5AHcK0uQiI0osfjRut4O74BLDX6bc
         +C+wKrukUrJf+Ci6bcazW44cHbcAeDidj09a6ZxQzkqZbEsuvghJ5SkUgcKh4VARQyG6
         7Eqb6Z0HzaVCYon5Td8MLQBU/0VH4mRRgTqFTsNGIt+TdmcYD7f6z/HOON+K2S6mtdpd
         SgRbgDOvuEoYAfzP1b5084pPXhfw6zTxdheKxK4moPh9k26B/7Oe3FB8qNGlHwNrUlJg
         bvYvNUsKJPAD3P2KxX+GF9fbeqBsgkgemgjv1F6mAUwvhahKMlaWsRZub2T+SZ9quPkA
         2zJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Xoyyqp4k;
       spf=pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gU8HDfkd8JQXTH514ZmsGPskRC5BhJSe7a9lSVqHcrg=;
        b=TP+WUp6GREScUsF7Cv17BljOzsENeUSTOcnAFW0qWTs/oEqj7gNLXbn6SZuwxm9juu
         V2PrkvvWvUHXQhSDs4nCvmAkoKQfdUFexeGGR4yYjopbEBQ60qYUMnB1WMQeVrC0r5e5
         NfjDbBgTRG0j4AzpDap/lpZ5bMIi+UQMRT1nOpGZxsSp0l3YyQC2G+0RDJMmnwS/+k+F
         1qKp828yrpWru9XyAkZGFDO6vsVTrhlSTCsFuj7k2TNIvpVb3a+0Lv/gA9qix/hh66S+
         nAxlwBQs3F4SwOaQs23fDMXL8+HLoftV8MvBvnr84SpmgjbOwV2znimXUdCbAqtdNloR
         LgVA==
X-Gm-Message-State: APjAAAVKTfPrAy+8fkEyH4AuVigV0Xq0E2t/rbezVgtk5sGiu7dKw/0b
	GUamX4epac+O2yLNtG4pR+w=
X-Google-Smtp-Source: APXvYqz8CreNnrYU2K6B5vMMQIJbZcxBsuzEuo0UCHKMG9x1bcQcLGOlSDdanwOKDMP4rWlK0Qg2lg==
X-Received: by 2002:a62:b508:: with SMTP id y8mr4087325pfe.251.1578663152504;
        Fri, 10 Jan 2020 05:32:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:6389:: with SMTP id h9ls1428121pgv.10.gmail; Fri, 10 Jan
 2020 05:32:32 -0800 (PST)
X-Received: by 2002:aa7:8f3d:: with SMTP id y29mr4216761pfr.183.1578663152036;
        Fri, 10 Jan 2020 05:32:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578663152; cv=none;
        d=google.com; s=arc-20160816;
        b=kwCYh7wx9dOeANDhRdSX8NMYJFQ9d8xV6K51GIa7hbYdYuQWKn7ymrxprWv+MBCQea
         E1LP3faKUyTxwPUc/d5YGG1HeHSVnQjzldxjsa95ek6gHXGwCS8jW1yDZCTmTaC0xOuI
         2IwAUzOPzBUe5MH2DjB77eB2gt9ORlA8oFNJ6Biiq9jmsn50BfVPMe4RkPxmIxtgAdWg
         VoM8OhOEHPwOUROCnIu9o7a1PkQlsHzHHLOQ+xxzyQug93Vhra6A31R6+0NbIA2WgcMX
         5wlbaeAvsv5UwlMqvHUbOLZQR1TZ39Upni149EVPW31T6T3BFAWMvO5yF8ixSWh8kIlC
         sKaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=KvNC+ZtmcyAhVZ56ZMn6CaYYHAi0RWpQoUQ7isluNMU=;
        b=uT/CxdaYQw6xJZXOASExyXXxKOu+s3wOKVl4mmto0zGLNfVXpZdsi6eK3MuwWOJKCc
         7b3ilYRJwla01gBZy8VZgoxu/b0Wk7h05QX4EIy5YynaNLCpixoS1HhqjwZYUv84f34T
         3E+b40m+SaznHZd/jFM8RFobR8V8F7Hkiws1cbOw+T5STvsUK727cXgwKjNrbxM9ltIY
         0sqw0nVS8QgCpoEQfvmoxVd6Z560I+SaKPoDOQSTvm/V5fsE1u7NKJnsMOD16k44mRVO
         4Q1mKN2Jb6OYx6Y1olQ9zgSP/sz+tRe0PvjLtHMoFUOBJqvc8ksfGMB3TfMIPKlaFTfI
         R06w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=Xoyyqp4k;
       spf=pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
Received: from mail25.static.mailgun.info (mail25.static.mailgun.info. [104.130.122.25])
        by gmr-mx.google.com with UTF8SMTPS id d12si287383pjv.0.2020.01.10.05.32.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 05:32:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) client-ip=104.130.122.25;
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJlN2RjOSIsICJsaW51eC1udGJAZ29vZ2xlZ3JvdXBzLmNvbSIsICJiZTllNGEiXQ==
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e187cee.7fe3e119cea0-smtp-out-n03;
 Fri, 10 Jan 2020 13:32:30 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 8D611C447A4; Fri, 10 Jan 2020 13:32:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (unknown [83.145.195.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 1C016C43383;
	Fri, 10 Jan 2020 13:32:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1C016C43383
From: Kalle Valo <kvalo@codeaurora.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Henderson <rth@twiddle.net>,  Ivan Kokshaysky <ink@jurassic.park.msu.ru>,  Matt Turner <mattst88@gmail.com>,  Alexey Brodkin <abrodkin@synopsys.com>,  Vineet Gupta <vgupta@synopsys.com>,  "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,  Helge Deller <deller@gmx.de>,  Benjamin Herrenschmidt <benh@kernel.crashing.org>,  Paul Mackerras <paulus@samba.org>,  Michael Ellerman <mpe@ellerman.id.au>,  Yoshinori Sato <ysato@users.sourceforge.jp>,  Rich Felker <dalias@libc.org>,  Dave Airlie <airlied@redhat.com>,  David Airlie <airlied@linux.ie>,  Daniel Vetter <daniel@ffwll.ch>,  Ben Skeggs <bskeggs@redhat.com>,  Mauro Carvalho Chehab <mchehab@kernel.org>,  Jiri Slaby <jirislaby@gmail.com>,  Nick Kossifidis <mickflemm@gmail.com>,  Luis Chamberlain <mcgrof@kernel.org>,  "David S. Miller" <davem@davemloft.net>,  Dave Jiang <dave.jiang@intel.com>,  Jon Mason <jdmason@kudzu.us>,  Allen Hubbe <allenbh@gmail.com>,  "Michael S. Tsirkin" <mst@redhat.com>,  Jason Wang <jasow
 ang@redhat.com>,  Arnd Bergmann <arnd@arndb.de>,  Geert Uytterhoeven <geert+renesas@glider.be>,  Thomas Gleixner <tglx@linutronix.de>,  linux-alpha@vger.kernel.org,  linux-kernel@vger.kernel.org,  linux-snps-arc@lists.infradead.org,  linux-parisc@vger.kernel.org,  linuxppc-dev@lists.ozlabs.org,  linux-sh@vger.kernel.org,  dri-devel@lists.freedesktop.org,  nouveau@lists.freedesktop.org,  linux-media@vger.kernel.org,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  linux-ntb@googlegroups.com,  virtualization@lists.linux-foundation.org,  linux-arch@vger.kernel.org
Subject: Re: [PATCH v2 2/9] net: wireless: rtl818x: Constify ioreadX() iomem argument (as in generic implementation)
References: <20200108200528.4614-1-krzk@kernel.org>
	<20200108200528.4614-3-krzk@kernel.org>
Date: Fri, 10 Jan 2020 15:32:13 +0200
In-Reply-To: <20200108200528.4614-3-krzk@kernel.org> (Krzysztof Kozlowski's
	message of "Wed, 8 Jan 2020 21:05:21 +0100")
Message-ID: <87imljsahu.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=Xoyyqp4k;       spf=pass
 (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
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

Krzysztof Kozlowski <krzk@kernel.org> writes:

> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
>
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> ---
>
> Changes since v1:
> 1. Add Geert's review.
> ---
>  drivers/net/wireless/realtek/rtl818x/rtl8180/rtl8180.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

No need to have "net: wireless: " in the title, this is enough.

rtl818x: Constify ioreadX() iomem argument (as in generic implementation)

I assume someone else will take this so here's my ack:

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87imljsahu.fsf%40codeaurora.org.
