Return-Path: <linux-ntb+bncBDXYVT6AR4MRBGHX3DYAKGQEXIEJ6YI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 16623134D8B
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:29:14 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id z19sf2538914pfn.18
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:29:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578515352; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVzypsmSluvOa4dSyViVXmsLd1IpMDv64bIMLA6WZQqQrpQbinzAowg8UYq7R9zxkG
         RcNX70aWLY7f3pkrmY2iqoZYzbMLYRPuOvQsljhmwiSovdOHQ7smgOeuQemd0jNvlUbN
         WzqF9O+NdCeQJNS5cbaR45ZcFxhGuyLwZNMZx1Hq/DwRQKkhaf+lKlrP2oPeUDHK02U0
         RVCzUYzT4BgC03KtysWqks22zk3fv5Emb3XZHJINb53Q30VMQe+ckkoSe4VunwV7t8+5
         Wn6WsobloX7ySbsY1wSb8pG2J8URjt2HAvkw+Oh9ZOdHdAOG3EE+4gItGKY0NOkAWSki
         hNAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=KdbmByfuu1lyFZVRZBlGXtY06AZ6h4Rz/JNrLQC77uU=;
        b=ooAgInlnWdrH4TS8967XWdd6WzKMyJNmkXbwLdQ5m4/AgSflOJBwdKieHC0+vEPJe2
         ox8/+mjywEHKf4z2oRgHwUkwnCYHVOjrITNYC0lDV+WuZl+kSQ3j4gyzmo06OaFyqDIO
         NsRrI4jg9jlIQDXEkuHl3W9nMJxDKIEuhLbnEaeH70lll6PrUEqU9Gf0UkVtdTGzI90x
         FdzpiBkA0XgOFqwblkmM28X75Ngb1tQH7h5MeLI2ek/py/vD9JAYSTruZUApM64ubegF
         CCWISFRKc3epvzg7/ud7WABTptrzJvpHm5ni9QOiv1XuHFfm5mv4VAotIceRTtLqczow
         xTCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KdbmByfuu1lyFZVRZBlGXtY06AZ6h4Rz/JNrLQC77uU=;
        b=cHdAlqpduyYcd19YM/JdXV6uJ+8PtWj9YJU+ee56ie00epi7fHw+qdnk2kM8cxaYVV
         8XZoGxGvobxKGZflHTx6lb5hEZJcEI0W7vmv4bObDkmCn+gF/C1PORQI7bUdhA+3QkQe
         ZuIw/RVrXh7YwWE9MpItDjMACjn9VDUa2JMS9lYW/vzaWBJNYoD/7KuUd/Y2oheAUvir
         i9k29N0LB8qfhO87QqO6yGK03M69LLTw3bzY0013lnJKp310wrMq0u0IylAAP7QSEgpD
         7wgzKG7/u2vaLzFJCX1H9WruuzSRh15sngUIZMuth5VoHLJyEerk8GOflduz7wHvBoM0
         5znQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KdbmByfuu1lyFZVRZBlGXtY06AZ6h4Rz/JNrLQC77uU=;
        b=AU9SdsnxrpG+ViG0A62b6dwfqBGMvrStS4wWb3Q6YnnL+l/0LJSlJ2pA0kwh+ENWpY
         jS/EY7dAcYi45NthIpttevB7pSjcwMjk8iYgU2kltg5JXjMbaG42iGAfTGoIQwFuiLfC
         8+uyRLqKtbdA6+E8O0ATEL0VxwRxSmfemeejs70j0RDzRTxf7QBl003bf/AtlqMks3sc
         e+U1jU382OImUmMmKChumgrNFJOsc/x7MxQxyN06JxvrB5G8SDjcO769g4L4QFRuboP4
         tDc99fqKy9KavNWqzzzIKpz9Lvn38iBe0hKot7AV4wdvkLYizRJJg+CPYiOXf7PAArnx
         XOiA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUGDQOv27oQuvhR9XwJK+ggyphr4zcq6pMtxKO6jKkEd5bbp5Xf
	IRkeLrPwiSbbYi/WYdOruOY=
X-Google-Smtp-Source: APXvYqz+EdwVK/pryGCXIHNwWgG2a+bKZEHvbC6kYAyEuPedgmXgnzPk/z91Z36fvUQ4UO3s7bEDRw==
X-Received: by 2002:aa7:8b5a:: with SMTP id i26mr7203031pfd.214.1578515352711;
        Wed, 08 Jan 2020 12:29:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9f95:: with SMTP id g21ls1368888plq.5.gmail; Wed, 08
 Jan 2020 12:29:12 -0800 (PST)
X-Received: by 2002:a17:902:b609:: with SMTP id b9mr7400897pls.70.1578515352279;
        Wed, 08 Jan 2020 12:29:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578515352; cv=none;
        d=google.com; s=arc-20160816;
        b=tz3VTh5w9NQwF2aMi9LlJlVYKo9Xurv3XQQ76poaKTzz4VAZ8krN7GGji8A3hkEQiq
         L5eNk91a5Lwq06qEL3TprcHEvIQ8afqCrYK4KvsE429iVvDvRa7/yZOYqidMj1PT/jXo
         gpHElIyTq1f7RsWk+qXLDscYj1F7Wny4ODD45EiCL74BHTvEnw/NF6OADIQLk+a/YIrY
         nv4lWdNflnXpOeFSu4XyjNNWI5YQPE+qP+P4Y+zKFrBIRqDj1HuPkS8fizeWZUgH5+S6
         lKC5SV0JJKRGC/NwO62JUpJZt3OR2trXMNlPAzIcuKyJW9yOz+VFiH4+MAZtGtMZWXJ+
         tCBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject;
        bh=9yy5lfrDVcPWJcp/rPG0popKxgBj/hvrtXyPsxAkEyU=;
        b=Sp3dyEaa7JbWSMILZ4gz0BcpK8TGp5BoWszS7FuboXLfTMmTTphfemvH0hDN6YhY6H
         0L5yUWgk7E9KusIkwFFmO4uzwqCF0GoKpqACT2QfH99khEa0yt/tNye0G0lvKKlwK/DO
         bsBhwAgxlixBYP8b4QUrMRmDBuRtzexDAgxf896xLqF9CvHEraYZjcdQua8AX2qZIMdq
         b8OH9+WZFzdIesUV64EeoEJJImqSlm/sxDeRV+WHheJjgZ9pgEDjakgYttWtOpb3qvHM
         Ev8hxj+oJnHFHDFydUSLs1/f2KVZ4tPwznsuyGZOaZJAb79UqRS+FbwBngqtGcs+nSY4
         v61w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id c4si149255plr.4.2020.01.08.12.29.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:29:12 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Jan 2020 12:29:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,411,1571727600"; 
   d="scan'208";a="223034363"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by orsmga006.jf.intel.com with ESMTP; 08 Jan 2020 12:29:09 -0800
Subject: Re: [PATCH v2 3/9] ntb: intel: Constify ioreadX() iomem argument (as
 in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>, Richard Henderson
 <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>,
 Vineet Gupta <vgupta@synopsys.com>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Rich Felker <dalias@libc.org>,
 Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri Slaby
 <jirislaby@gmail.com>, Nick Kossifidis <mickflemm@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Kalle Valo <kvalo@codeaurora.org>,
 "David S. Miller" <davem@davemloft.net>, Jon Mason <jdmason@kudzu.us>,
 Allen Hubbe <allenbh@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org,
 linux-arch@vger.kernel.org
References: <20200108200528.4614-1-krzk@kernel.org>
 <20200108200528.4614-4-krzk@kernel.org>
From: Dave Jiang <dave.jiang@intel.com>
Message-ID: <64659f77-f807-7c8e-7595-731056c73bf4@intel.com>
Date: Wed, 8 Jan 2020 13:29:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200108200528.4614-4-krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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



On 1/8/20 1:05 PM, Krzysztof Kozlowski wrote:
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
> 
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Acked-by: Dave Jiang <dave.jiang@intel.com>

> 
> ---
> 
> Changes since v1:
> 1. Add Geert's review.
> ---
>   drivers/ntb/hw/intel/ntb_hw_gen1.c  | 2 +-
>   drivers/ntb/hw/intel/ntb_hw_gen3.h  | 2 +-
>   drivers/ntb/hw/intel/ntb_hw_intel.h | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> index bb57ec239029..9202502a9787 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
> @@ -1202,7 +1202,7 @@ int intel_ntb_peer_spad_write(struct ntb_dev *ntb, int pidx, int sidx,
>   			       ndev->peer_reg->spad);
>   }
>   
> -static u64 xeon_db_ioread(void __iomem *mmio)
> +static u64 xeon_db_ioread(const void __iomem *mmio)
>   {
>   	return (u64)ioread16(mmio);
>   }
> diff --git a/drivers/ntb/hw/intel/ntb_hw_gen3.h b/drivers/ntb/hw/intel/ntb_hw_gen3.h
> index 75fb86ca27bb..d1455f24ec99 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_gen3.h
> +++ b/drivers/ntb/hw/intel/ntb_hw_gen3.h
> @@ -91,7 +91,7 @@
>   #define GEN3_DB_TOTAL_SHIFT		33
>   #define GEN3_SPAD_COUNT			16
>   
> -static inline u64 gen3_db_ioread(void __iomem *mmio)
> +static inline u64 gen3_db_ioread(const void __iomem *mmio)
>   {
>   	return ioread64(mmio);
>   }
> diff --git a/drivers/ntb/hw/intel/ntb_hw_intel.h b/drivers/ntb/hw/intel/ntb_hw_intel.h
> index e071e28bca3f..3c0a5a2da241 100644
> --- a/drivers/ntb/hw/intel/ntb_hw_intel.h
> +++ b/drivers/ntb/hw/intel/ntb_hw_intel.h
> @@ -102,7 +102,7 @@ struct intel_ntb_dev;
>   struct intel_ntb_reg {
>   	int (*poll_link)(struct intel_ntb_dev *ndev);
>   	int (*link_is_up)(struct intel_ntb_dev *ndev);
> -	u64 (*db_ioread)(void __iomem *mmio);
> +	u64 (*db_ioread)(const void __iomem *mmio);
>   	void (*db_iowrite)(u64 db_bits, void __iomem *mmio);
>   	unsigned long			ntb_ctl;
>   	resource_size_t			db_size;
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/64659f77-f807-7c8e-7595-731056c73bf4%40intel.com.
