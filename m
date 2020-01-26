Return-Path: <linux-ntb+bncBCQYFH77QIORBMGYW3YQKGQEWPBR46Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-f192.google.com (mail-pf1-f192.google.com [209.85.210.192])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0A4149B4D
	for <lists+linux-ntb@lfdr.de>; Sun, 26 Jan 2020 16:11:46 +0100 (CET)
Received: by mail-pf1-f192.google.com with SMTP id 145sf4791211pfx.19
        for <lists+linux-ntb@lfdr.de>; Sun, 26 Jan 2020 07:11:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580051504; cv=pass;
        d=google.com; s=arc-20160816;
        b=PSAyp5rBlbIM6FH3IFDHO9NKh3+zGRAVAbw4AuLslFRxBXqI1dr7ie5/qrIz+gCyGc
         EatYHCwVceywlwtI/uYdtO/frjoZeOLldtsheOcC6+vBTixOYCCZ0khWXQJRVLYfi9hd
         1v06C1r9Oau5HAnoaoSerhwtStaNiS73PTcbs/b++078yAh0PLqdXkMTY21bo1owYja0
         hUw9sFuw9R9qgY3Qq3r8Mg9xl5v7cyVFtzfummYfxmj3Nze6b6K8ZNK0z55+QJfibrza
         8BukKl6xsMXBMGkfpUuFOedzo3KF1AOz5i7DvBdElOrBaMs4SpJKtsZBvEyIDtTY8iLa
         wpAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:user-agent:cc:to
         :references:in-reply-to:from:subject:mime-version:dmarc-filter
         :sender;
        bh=ePztyOBsPSY+YA7yKE4Cnk/4kvqCYNDW6ru7t52yupg=;
        b=uZNd6MsDYW7kGm0NY91af5reiS90yUQytRb1vYLDbMWSrk0x58JFVXtig527qKCRqL
         wdV17SvO2alYopUx4S9UGx8Hgxv2lSQ98nltzL2REiQcTmoVAtXA3zXF6H0QgpeLbd6D
         rccFrLt9zppFq88L9aLuZDqPekAqK+S4lcqVT8RGdJ1nWMBNB8uc5JbDlF5f8lJk4Wvs
         TyPfudzVyyRtq91v21BqmaJTPbSaBUnEclty+Q4hyBqC/xG1vxjWxfNCYcS5sOVA6lht
         ddZ+qPK45pNwRJwGhCUojIiHm1uTIqQ4/UclYYCFWBUovWKEOTSTRkwHIflkzVL7MB2p
         SaoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=E4DXOkkB;
       spf=pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:mime-version:subject:from
         :in-reply-to:references:to:cc:user-agent:message-id:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ePztyOBsPSY+YA7yKE4Cnk/4kvqCYNDW6ru7t52yupg=;
        b=jj8XYfAFDRlA8MmSBP8P62QvFwzVeT8kJEEZoFM4YCkrhxxd0t48qFPv7bkTOrSMtF
         kR/xFY1T+sI8gRs26VAucHQYL0Qw0jk5p2fT0KzzlHD7TOlzS1EJPjOIFh6xeBdCwBc0
         MXMUTIrCHPMtD895jqlmGTJ5si250b2ctc8x8cjvSsBHPcRm52xoyDM/yqCtN7xL6sgQ
         biH9r87SZ2xHdMvMYSpTmhFdqZEeqh9bRQEr3wHjFPwv8xK8iNbScEg1gSjMTbP0xCnb
         pux4HaDoQdVwKmQHwJT7Wsu+Pcn0/gH0yFS0J9DHSRDA90LLK2fSUHhT84aNwLF1k3Ew
         28Sg==
X-Gm-Message-State: APjAAAUr9dMnPJ2ZocUSliJGmi3fX2y3MomSh3TMEVt/cfeWYDSSp9qS
	6WjWMZWPPmMzzsPz7b6KHF4=
X-Google-Smtp-Source: APXvYqwQm+5Iax5fbSfVIrQ9a7V4oUJm1eVszxHLyAzn82cVUTvVE0LcuDHk5Q1WZ4IXy3zdOzNrig==
X-Received: by 2002:aa7:9115:: with SMTP id 21mr12360333pfh.224.1580051504347;
        Sun, 26 Jan 2020 07:11:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:cc:: with SMTP id e12ls3278484pfj.6.gmail; Sun, 26
 Jan 2020 07:11:43 -0800 (PST)
X-Received: by 2002:a63:cb06:: with SMTP id p6mr14780250pgg.236.1580051503522;
        Sun, 26 Jan 2020 07:11:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580051503; cv=none;
        d=google.com; s=arc-20160816;
        b=bag8AADv/LzcQKrqmQNAvB/Tvj0SMMW7gXKPFjyKtS7Q4/eEUZfT9/G9N3BuC23VGI
         Ce4aLBkgV+8hdzRwrinM8olMdb0suztURskqGMXISz8GKMeZaBsVVDiLlbCkMS4mRSyE
         zVqXy1TPGgBt0G5i6r5/yKYk7DA6XzXyuBlozwVAKGf6pYL+y300Gmx3ttGx3mYACauM
         U4wE/rQIlzaz3h+KW8/SxDaPMO2RE2kXWqCnfqSX0rZBFTJLe/xyBuv/CeufRXSUaGrv
         bFojGB91CAb6BLMNH8ZdDW2C8r0neBbHyE1pBoaLtN5bYh7KM+qsRd0xV1RSiK45oI27
         6Bbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:user-agent:cc:to:references:in-reply-to:from
         :subject:content-transfer-encoding:mime-version:dmarc-filter:sender
         :dkim-signature;
        bh=GgNouC08XBq9czPTNzqE2b2+ochAUWZ+cpydcRWvAGA=;
        b=Bi/gbfWbWE+eiNh67TUX0m/rtDIfVijV2tGDqRY6bLM67ZnL59efRDtCb2avp6rspv
         V2gJ8MKlLVcbkUk+9Z603OXaMzsw9wHW4ULhghAesHu6sCOs/cYwZLK7DrJ6HVSiL5Wm
         WiptDjYQQJyfzBD6gwu11UKhZOrwba8s1ll6CehZUi+YWtYXFNfSFaQgweO36OYbIYtY
         rUtevhWJXkcizt2gqZvnT3YimLND0ESz3+DcZ4qn+IMA5BQTKm4GDaJ91xS8wxy1kJ0E
         7K5YHICRZLpZ8gyjKzya/t3hH2I3hA++gznWZrl0NVhvOixbmsILzPpR8vUB6oXPxSrF
         BRCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=E4DXOkkB;
       spf=pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) smtp.mailfrom="bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org"
Received: from mail25.static.mailgun.info (mail25.static.mailgun.info. [104.130.122.25])
        by gmr-mx.google.com with UTF8SMTPS id x13si656684pgt.3.2020.01.26.07.11.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jan 2020 07:11:43 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce+688589.be9e4a-linux-ntb=googlegroups.com@mg.codeaurora.org designates 104.130.122.25 as permitted sender) client-ip=104.130.122.25;
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJlN2RjOSIsICJsaW51eC1udGJAZ29vZ2xlZ3JvdXBzLmNvbSIsICJiZTllNGEiXQ==
Sender: kvalo=codeaurora.org@mg.codeaurora.org
Received: from smtp.codeaurora.org (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e2dac29.7f0f2c45cce0-smtp-out-n03;
 Sun, 26 Jan 2020 15:11:37 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 6B3F1C43383; Sun, 26 Jan 2020 15:11:37 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=2.0 tests=ALL_TRUSTED,MISSING_DATE,
	MISSING_MID,SPF_NONE autolearn=no autolearn_force=no version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi [88.114.240.156])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: kvalo)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 77D01C43383;
	Sun, 26 Jan 2020 15:11:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 77D01C43383
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Subject: Re: [PATCH v2 2/9] net: wireless: rtl818x: Constify ioreadX() iomem
 argument (as in generic implementation)
From: Kalle Valo <kvalo@codeaurora.org>
In-Reply-To: <20200108200528.4614-3-krzk@kernel.org>
References: <20200108200528.4614-3-krzk@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Henderson <rth@twiddle.net>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner <mattst88@gmail.com>, 
 Alexey Brodkin <abrodkin@synopsys.com>, Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri Slaby <jirislaby@gmail.com>, 
 Nick Kossifidis <mickflemm@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Dave Jiang <dave.jiang@intel.com>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Arnd Bergmann <arnd@arndb.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
User-Agent: pwcli/0.0.0-git (https://github.com/kvalo/pwcli/) Python/2.7.12
Message-Id: <20200126151137.6B3F1C43383@smtp.codeaurora.org>
Date: Sun, 26 Jan 2020 15:11:37 +0000 (UTC)
X-Original-Sender: kvalo@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=E4DXOkkB;       spf=pass
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

Krzysztof Kozlowski <krzk@kernel.org> wrote:

> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
> 
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

I assume this and patch 9 are going via some other tree so dropping them
from my patchwork queue.

-- 
https://patchwork.kernel.org/patch/11324461/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200126151137.6B3F1C43383%40smtp.codeaurora.org.
