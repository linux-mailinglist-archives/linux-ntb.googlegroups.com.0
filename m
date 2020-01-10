Return-Path: <linux-ntb+bncBCQYFH77QIORBKX24HYAKGQEJ6ZTRGY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-f191.google.com (mail-pl1-f191.google.com [209.85.214.191])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F036136E25
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Jan 2020 14:33:32 +0100 (CET)
Received: by mail-pl1-f191.google.com with SMTP id 30sf1155030plc.23
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Jan 2020 05:33:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578663210; cv=pass;
        d=google.com; s=arc-20160816;
        b=U4Xi/7gt7Z6xXSMiiC0TFM7GRI8qrIJGz45/3I7zCpglzWuEsh0iGDy9oY1T9Hkcwr
         VSainInsjOJquowfWGkkeRoxF1KbQn+2lfsGrZOkFZA4ShJRhoaJh/XmSsYrfAvFo+cv
         VP0YFfD8INlKpBfWOz6S5+7Zv4mfE9GTc0UyrPDF+yyNyyy4T0V6lvRqJHJDEDI27/SY
         aVomYOS07uqfu/PaKuWSLGO3Xz0Lm3Dh0Gw319Y48u9MTfq2E8DoR0Bo82+BbLTkDAMt
         XD4DU0STUVTlpGiljPpx9eFAakYoJiZT0QsdWOUMHzDXPA3bk/XdZyiii3IR8cizz/RJ
         bRWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:dmarc-filter:sender;
        bh=sEbrftPRnLF5OyG3x29QOFuexc93VY/nsnUU2C2QJ08=;
        b=tbu1Fp73mRCgvzWzfZvmARd8j74vhjP6Xg7gJ8KZdAL2lyBuE+98rdnqKpcjY/n8Pn
         TqAutAkoVBVs+sPq5VdIHv+TbOp4CwuMmrbIFkJxGTV0DvgKOVz6HQc85236vSXp8LMv
         7NK3W9+jvYMAV1X5AV6jgN4ofAk7sTx/nB1ASOR+00kM9wn/J/L270+X4po5EoSkTpE1
         CVN3XTHPCL0w66r++0Dh9M9M2SL7C644bT2ARwJUbveu1TZ5iF2ARDV5d/flC0mkf11/
         Rtj4E6T3xYlXSSECmMbBWxR/7c3MMTj1LHPOjXLPjNKvoI79HvthNsXqraOudn5kkcW2
         BqGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=wCHeVgsD;
       spf=pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:from:to:cc:subject
         :references:date:in-reply-to:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sEbrftPRnLF5OyG3x29QOFuexc93VY/nsnUU2C2QJ08=;
        b=XXOPL5iHXj73I/t1m1KyK1C+tZJmfphoPioa2aKgLWToAG99Hhd7Oq5mrW3AiurQYO
         fJzrr7NIIPkNvfdvTxeZX19Z2q2fL6ewHPqm7UrEBT/FOjQCKPm4kzF0fPOzAicYe3vh
         ySF2knb7M4NApf0WG/0AslaVqJUZYL5Vt+4MSsFadCuMVF8m89S5HP1QGGe10ep1WBkn
         PZxR25Ls88ZmbegEIhSKz0NNgUcVD016KKmCEzV0nJklnxJwJheQZWVxcDu1bk+RdcdX
         hAFQ0lObWlvDOEPi2AsxwacCMB3fNZxdBiIeY+aXeLXuHhmnfhVtc3EPp/Bzj7Car20o
         fdLg==
X-Gm-Message-State: APjAAAUvgbbZwcjNIlOZ1c6mxpu2qvVF83hDNgfyGPbEvD09vv073iLZ
	T0FiZ/rJus2V89o6G5ZQu2w=
X-Google-Smtp-Source: APXvYqwgBzTKi2ceGRhpxAi/xufBz9sNnIc51HnHOurSoFM1u3ldXafuRSIZ8N1lSQP8nSrplrnOhQ==
X-Received: by 2002:a62:342:: with SMTP id 63mr4129349pfd.19.1578663210432;
        Fri, 10 Jan 2020 05:33:30 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:ac97:: with SMTP id h23ls1497521plr.14.gmail; Fri,
 10 Jan 2020 05:33:30 -0800 (PST)
X-Received: by 2002:a17:902:7e4d:: with SMTP id a13mr4394900pln.281.1578663210047;
        Fri, 10 Jan 2020 05:33:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578663210; cv=none;
        d=google.com; s=arc-20160816;
        b=jrEVjPwgfbKJYykVk0L69szC8uOooGlid1e2g/CUcUacpsl2Fo3Qa1+d7G2oibZOuN
         HyPi1TSxQpR9kbfV+o8skMu7XXAp85Cy641uvh1GpWrkZGKWKz2FJQbvVsHCtakou27T
         2sLURdos9Z1Jw3Hs+ZHxmIl+Hra63DZ8keNdCypZJA21IOGYihe5DwKa9qWDpnWMV59H
         JyY7AyeF02EZSy5fNCdUAVSUi9KL8x44GjpuanXF4Uwi+++2UxdPtQ1/f3+6ztUbnxEN
         1kWQLyy2C2w8sPtE0SsurQx8398l+ixhcMSO6lDGeXZ3UTMVvrge/HPRj/Bef9hwVEeR
         jjYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from:dmarc-filter:sender:dkim-signature;
        bh=R0YUROCJJ/dav0PwJDeXKOS0FaitFefZwp9Lb2TmZvI=;
        b=kKhaIVuU7gYYCwuoIkhNUrH+dhjBL76w3l2oc6rVN6KddILEyFaSG8j32AzsFVas7v
         bGdfQqDZmkVHeGTp5QWPFzF2rccRUMdMzLgo51CBTRHgXLEn9/eUidsArd7M26oFMWIB
         FEfjEtzttuB/NsZnUpTceJ3wOWkZ1jsF1ScmbIn/BG0KrAK/e1bLUgMhiwaTGomgOX2S
         Bu1Yvm1/JhyPfBGZ1hNyCmkdpymTbCLCZhTtmUt758lgB60PzAmPI4cS+cugV4voAvf2
         ju4Oapp4HV/QkwjJ5YmK8yKV5JuWvPQz31pYxK98Jte9+3+fsoWwdlP46E+s5RiUXDif
         mwbw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=wCHeVgsD;
       spf=pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
Received: from mail26.static.mailgun.info (mail26.static.mailgun.info. [104.130.122.26])
        by gmr-mx.google.com with UTF8SMTPS id d14si60742pfo.4.2020.01.10.05.33.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jan 2020 05:33:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.26 as permitted sender) client-ip=104.130.122.26;
X-Mailgun-Sending-Ip: 104.130.122.26
X-Mailgun-Sid: WyJlN2RjOSIsICJsaW51eC1udGJAZ29vZ2xlZ3JvdXBzLmNvbSIsICJiZTllNGEiXQ==
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e187d27.7fad59c47110-smtp-out-n02;
 Fri, 10 Jan 2020 13:33:27 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 7BD7CC447B3; Fri, 10 Jan 2020 13:33:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from x230.qca.qualcomm.com (unknown [83.145.195.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 80C82C43383;
	Fri, 10 Jan 2020 13:33:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 80C82C43383
From: Kalle Valo <kvalo@codeaurora.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Henderson <rth@twiddle.net>,  Ivan Kokshaysky <ink@jurassic.park.msu.ru>,  Matt Turner <mattst88@gmail.com>,  Alexey Brodkin <abrodkin@synopsys.com>,  Vineet Gupta <vgupta@synopsys.com>,  "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,  Helge Deller <deller@gmx.de>,  Benjamin Herrenschmidt <benh@kernel.crashing.org>,  Paul Mackerras <paulus@samba.org>,  Michael Ellerman <mpe@ellerman.id.au>,  Yoshinori Sato <ysato@users.sourceforge.jp>,  Rich Felker <dalias@libc.org>,  Dave Airlie <airlied@redhat.com>,  David Airlie <airlied@linux.ie>,  Daniel Vetter <daniel@ffwll.ch>,  Ben Skeggs <bskeggs@redhat.com>,  Mauro Carvalho Chehab <mchehab@kernel.org>,  Jiri Slaby <jirislaby@gmail.com>,  Nick Kossifidis <mickflemm@gmail.com>,  Luis Chamberlain <mcgrof@kernel.org>,  "David S. Miller" <davem@davemloft.net>,  Dave Jiang <dave.jiang@intel.com>,  Jon Mason <jdmason@kudzu.us>,  Allen Hubbe <allenbh@gmail.com>,  "Michael S. Tsirkin" <mst@redhat.com>,  Jason Wang <jasow
 ang@redhat.com>,  Arnd Bergmann <arnd@arndb.de>,  Geert Uytterhoeven <geert+renesas@glider.be>,  Thomas Gleixner <tglx@linutronix.de>,  linux-alpha@vger.kernel.org,  linux-kernel@vger.kernel.org,  linux-snps-arc@lists.infradead.org,  linux-parisc@vger.kernel.org,  linuxppc-dev@lists.ozlabs.org,  linux-sh@vger.kernel.org,  dri-devel@lists.freedesktop.org,  nouveau@lists.freedesktop.org,  linux-media@vger.kernel.org,  linux-wireless@vger.kernel.org,  netdev@vger.kernel.org,  linux-ntb@googlegroups.com,  virtualization@lists.linux-foundation.org,  linux-arch@vger.kernel.org
Subject: Re: [PATCH v2 9/9] net: wireless: ath5k: Constify ioreadX() iomem argument (as in generic implementation)
References: <20200108200528.4614-1-krzk@kernel.org>
	<20200108200528.4614-10-krzk@kernel.org>
Date: Fri, 10 Jan 2020 15:33:11 +0200
In-Reply-To: <20200108200528.4614-10-krzk@kernel.org> (Krzysztof Kozlowski's
	message of "Wed, 8 Jan 2020 21:05:28 +0100")
Message-ID: <87eew7sag8.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=wCHeVgsD;       spf=pass
 (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org
 designates 104.130.122.26 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
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
> ---
>  drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

No need to have "net: wireless: " in the title, otherwise looks good.

Acked-by: Kalle Valo <kvalo@codeaurora.org>

-- 
https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87eew7sag8.fsf%40codeaurora.org.
