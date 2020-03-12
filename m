Return-Path: <linux-ntb+bncBCR5PSMFZYORBR5KVDZQKGQE4BIA6KA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB29182E58
	for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 11:56:09 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id e10sf3619998qkg.8
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 03:56:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584010568; cv=pass;
        d=google.com; s=arc-20160816;
        b=kgu4U/Mf5R8pzDpoigJ3GE8/DMIx0r3COwCHZs52zKSHBud81zoDABpQKOu+G169/N
         6kARDvlAcxsU6gb0KAcH7XXUdQMKwrW/cDtXAASZfG3IgiRKEBXYnsCjA34r4w7UqwB6
         u8ehaa9XWJDdM4mviqrOz7IQVPQ2QDPmDPUb3AkjxH3yiuRDjPVwcMEM0AcTj3W5n7P1
         OvEXETjkP8N7Or+O5wLWOdRiycVTjSECiyKXfhI5tDuTxwXVXMYCNb6RkXL5EW86PsJI
         q8L320Ok3LRqqpwsVD3kI4+GOf26iZl7pSgUoZaPygmqECFfTcPEGBh6UAEc1LRNiEwa
         NakQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=VmurZ4IGL8Ke2gd/Vj6hJxuw63qlCgwRGATN19rwI7o=;
        b=dFCrwimwPHg3dcHZSD7146Mz8wsPSOBB47Jl3oloSrqAF9qmy95WevXmulNydEx5Cw
         96FKDHFKrzjFvlaQ2g7zZzZgXv5uhq01mNxVSHF54qKnIZkYu/21VXPGzfpkWvZ/SS2p
         aMhq367O9VrF8Gnm2jqClAxo578McW7VfNgwqd2zMXJRkPXH5OyQkC/voJxXvr2iNoGo
         TT5NgYFwHAivdp0Vmte4FGhLeYdSFmEiGm0HazurLtxwM+kicLim/na2Qr4rqDxTh7O8
         6mZNFUwDAkjg3QriGOKlVl5moPSEtlQjgxjKeNftdlniqrNntbpXY3eHiVPPWhp5gjpZ
         ssyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=kjtDKke2;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmurZ4IGL8Ke2gd/Vj6hJxuw63qlCgwRGATN19rwI7o=;
        b=kI7TBGuU+AX9hkQaAG10YypADgKkmbS3lG0I0G4lFXXKNmMyy9/+MaHdjN9kVDml5X
         Mvf90q4NX0L6lxFIWNa+ltjCqTd3xbHYL4gwgoTdlz/e8nJzpeijhjISQEYdRWEp4zgO
         0hUVNNTC0X04N0ddD6YAK04D//2HS+8N1rKukxHGp3rii2kAU5iVRqCqghFrVAczbgpF
         9zmMn41ysJB7CtpLwFO6tJXL9uWlKZR28rve6tlnB62ZtnZLxiKKKTB7Q/6KLMPYhUvu
         o4nZVw1AEDxaGMf5vNqiF6GZIkMpDyjxWs0+viD3bkX9NEaNBjiIPXgWrPXtch75saw9
         b+xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmurZ4IGL8Ke2gd/Vj6hJxuw63qlCgwRGATN19rwI7o=;
        b=AnQqiZ/0B/MYg0t+XrKkSnc8+4A0Wjopjqw1aye+QqQzQTjMtoBxlVZ6LG2gNZSHIc
         zLXcYrirLN9is9ELZPYghgbesmNinQWXznfMfh+PmVIFHWUVt73u5rSwpt03J3AjR9MD
         tCyneWKuH3fzhgy126rUX/r15NwJenE8ijJCKzk0FNSMThaXBzn56iSw6eP8ELoXiR56
         ooM3LSk5NEQ0ARm2iI7TLJ7TK7rDTm/1V3r9YH5lHMT1SFQXYNjeR5q1nDArP1zQRDN3
         S+hCnciUXzewmvd3e+a+IR+luv9jwNlnCfz1+fsZ+RwDu6wITlLTttZ1ODQeFiJPH6Gb
         HKPg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ0FRCkQQtVEV/R8QDU2zrOp3vrPEg9/47GqmDgRgDXiHRNDjfrf
	ifDdXgbglCbd0s/oUh+uAos=
X-Google-Smtp-Source: ADFU+vuI9N2ZrLK6OtXsu0xWk3TIIQs/gPZXGkQS5ARLLJwSo2cmnS1Ni3n278i1jZkKZv0VUvOH7A==
X-Received: by 2002:a25:d7d7:: with SMTP id o206mr7423843ybg.287.1584010568058;
        Thu, 12 Mar 2020 03:56:08 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:5cc:: with SMTP id 195ls713983ybf.10.gmail; Thu, 12 Mar
 2020 03:56:07 -0700 (PDT)
X-Received: by 2002:a25:b8cc:: with SMTP id g12mr7849284ybm.485.1584010567457;
        Thu, 12 Mar 2020 03:56:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584010567; cv=none;
        d=google.com; s=arc-20160816;
        b=CAje+0q+5FvPfK8lc0du2GSjeaKgluGVtEngWK4R3V0zeQbZB9nPE9Gtz0N2Wf2CNc
         vVutXb0XOMn/DmKWqip4PfPMf4W5fHt94s040UknETMX5H/GzhE87HQtbElLh9TOp5F/
         Gv94vJKyz6s2NUEbUnORx3vKsfgZAHj0D8fklkA2hN0kLEgJwKvr/9wv9mftIMwe0C0p
         a3DIAU1LSMmMKQRSTPucNNK3AowqwTDm0wf/aoGDcAuTtlpQjb1Yqzug2pSBJ4EN5mb+
         IhaKRhfHqvr3HomO11SbW0yEseuLwLG2mfp7uCiVJBPy+7q5M5QTDTx1oyeUxG7bnEXE
         ARXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=WGqnnihGJ5YJvSKH0AmLoP2QM0ZTfXic/UkN3KPSDb4=;
        b=O+jqGjmhGaMZrgmbpWMzvy4hDFIOXfqG23xHWXClGxX6EQomh/CLc++WiRCfQCFMnr
         A+tCdR4naG44YelGcOXGkVHgSi9eE+6yUBWcl9Tam28U8yBqniLkWDAlTUv7ieOoNTcz
         43PIzig5neIBewbnYs9GJ4mFaKFJV7AvyXdnFR6VnvWOWUICOOXeprWUCM1DauXRK5Ti
         VdIuUc8YrgzqY2UZuLtWBxdubCSk4jW1MBZpuIiwVqNpKoODaUgNa/5+tX4lXzCNDKyu
         iVCPKexMn76LLA280Hf9SSyCCLehGc7lwTmiTzMgUvIhTF9FZpEnTC0uBHL3AuB6sCLt
         o3sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=kjtDKke2;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id l1si156735ybt.2.2020.03.12.03.56.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 03:56:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 48dQjL3pfwz9sPF;
	Thu, 12 Mar 2020 21:55:50 +1100 (AEDT)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Krzysztof Kozlowski <krzk@kernel.org>, Richard Henderson
 <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner
 <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>, Vineet Gupta
 <vgupta@synopsys.com>, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, Yoshinori Sato <ysato@users.sourceforge.jp>, Rich
 Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs
 <bskeggs@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri
 Slaby <jirislaby@gmail.com>, Nick Kossifidis <mickflemm@gmail.com>, Luis
 Chamberlain <mcgrof@kernel.org>, Kalle Valo <kvalo@codeaurora.org>, "David
 S. Miller" <davem@davemloft.net>, Dave Jiang <dave.jiang@intel.com>, Jon
 Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>, "Michael S.
 Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Arnd Bergmann
 <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Andrew
 Morton <akpm@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-alpha@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-parisc@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-sh@vger.kernel.org,
 dri-devel@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, linux-ntb@googlegroups.com,
 virtualization@lists.linux-foundation.org, linux-arch@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [RESEND PATCH v2 1/9] iomap: Constify ioreadX() iomem argument (as in generic implementation)
In-Reply-To: <20200219175007.13627-2-krzk@kernel.org>
References: <20200219175007.13627-1-krzk@kernel.org> <20200219175007.13627-2-krzk@kernel.org>
Date: Thu, 12 Mar 2020 21:55:44 +1100
Message-ID: <87ftedj0zz.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=kjtDKke2;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 203.11.71.1 as permitted
 sender) smtp.mailfrom=mpe@ellerman.id.au
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
> diff --git a/arch/powerpc/kernel/iomap.c b/arch/powerpc/kernel/iomap.c
> index 5ac84efc6ede..9fe4fb3b08aa 100644
> --- a/arch/powerpc/kernel/iomap.c
> +++ b/arch/powerpc/kernel/iomap.c
> @@ -15,23 +15,23 @@
>   * Here comes the ppc64 implementation of the IOMAP 
>   * interfaces.
>   */
> -unsigned int ioread8(void __iomem *addr)
> +unsigned int ioread8(const void __iomem *addr)
>  {
>  	return readb(addr);
>  }
> -unsigned int ioread16(void __iomem *addr)
> +unsigned int ioread16(const void __iomem *addr)
>  {
>  	return readw(addr);
>  }
> -unsigned int ioread16be(void __iomem *addr)
> +unsigned int ioread16be(const void __iomem *addr)
>  {
>  	return readw_be(addr);
>  }
> -unsigned int ioread32(void __iomem *addr)
> +unsigned int ioread32(const void __iomem *addr)
>  {
>  	return readl(addr);
>  }
> -unsigned int ioread32be(void __iomem *addr)
> +unsigned int ioread32be(const void __iomem *addr)
>  {
>  	return readl_be(addr);
>  }
> @@ -41,27 +41,27 @@ EXPORT_SYMBOL(ioread16be);
>  EXPORT_SYMBOL(ioread32);
>  EXPORT_SYMBOL(ioread32be);
>  #ifdef __powerpc64__
> -u64 ioread64(void __iomem *addr)
> +u64 ioread64(const void __iomem *addr)
>  {
>  	return readq(addr);
>  }
> -u64 ioread64_lo_hi(void __iomem *addr)
> +u64 ioread64_lo_hi(const void __iomem *addr)
>  {
>  	return readq(addr);
>  }
> -u64 ioread64_hi_lo(void __iomem *addr)
> +u64 ioread64_hi_lo(const void __iomem *addr)
>  {
>  	return readq(addr);
>  }
> -u64 ioread64be(void __iomem *addr)
> +u64 ioread64be(const void __iomem *addr)
>  {
>  	return readq_be(addr);
>  }
> -u64 ioread64be_lo_hi(void __iomem *addr)
> +u64 ioread64be_lo_hi(const void __iomem *addr)
>  {
>  	return readq_be(addr);
>  }
> -u64 ioread64be_hi_lo(void __iomem *addr)
> +u64 ioread64be_hi_lo(const void __iomem *addr)
>  {
>  	return readq_be(addr);
>  }
> @@ -139,15 +139,15 @@ EXPORT_SYMBOL(iowrite64be_hi_lo);
>   * FIXME! We could make these do EEH handling if we really
>   * wanted. Not clear if we do.
>   */
> -void ioread8_rep(void __iomem *addr, void *dst, unsigned long count)
> +void ioread8_rep(const void __iomem *addr, void *dst, unsigned long count)
>  {
>  	readsb(addr, dst, count);
>  }
> -void ioread16_rep(void __iomem *addr, void *dst, unsigned long count)
> +void ioread16_rep(const void __iomem *addr, void *dst, unsigned long count)
>  {
>  	readsw(addr, dst, count);
>  }
> -void ioread32_rep(void __iomem *addr, void *dst, unsigned long count)
> +void ioread32_rep(const void __iomem *addr, void *dst, unsigned long count)
>  {
>  	readsl(addr, dst, count);
>  }

This looks OK to me.

Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

cheers

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87ftedj0zz.fsf%40mpe.ellerman.id.au.
