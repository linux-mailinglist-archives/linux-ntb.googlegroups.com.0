Return-Path: <linux-ntb+bncBC6JD5V23ENBBJXSWLZQKGQEWXBYVBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id BD972185580
	for <lists+linux-ntb@lfdr.de>; Sat, 14 Mar 2020 11:59:51 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id g21sf3516826lfd.23
        for <lists+linux-ntb@lfdr.de>; Sat, 14 Mar 2020 03:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584183591; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYPelr+KJJrRLsRsQGkXCD5ZXyP5RHYzUqTlkwyOu/KYOUEh1I7vjG6WQXE8TdzcuQ
         qi3PMQSlll2QP+4KuqPjnrgFj3dkc4npNOfe6bCQbVWFcz6Ow2scYng5Kd3Ix1vmOW54
         SsUD/QJ0ZJBbSyQdZRdLYdP9YsKNFSOp9hLwDCsMsbb+sYpXxuFGBwWrBgJx1oXiDN7n
         QwC4wks4RqDDRQw8xOAnqBDXVpBperlgbj11Gql5U+QG4pjp9nhuHkkh30vERcHnusKr
         50tVBczsafa7ScywXToW0kjipBoHZ5TEMDbtBSo0C1i3SAUbi9nNbTJK5TzAEwbbavdO
         /teA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nV5AgOGSN04hJGMffNJcE4hBp9V+wdqeGag6kEI7uUw=;
        b=rDI5geMwEiRKSedWFDXaqaTkK9lcw6WzvWiokBiNBuAqYojLK+aXfD4LW2/2zyRRGS
         OQoMSJR3SKfWJ2SnVpLnaf/Ua7tPnHexmPbl9Vmp3ATEgzTVMSqLNDXBhrhb7Jzq2/GY
         CG+UtsVYkQs3tqi+0bpNLkkWbrSxkhQcdm1qkeHPHSqVR7PYAO6zGcRiKQ8f2/dY0skb
         EL1OlwBYAhnN4XQ00a28RKareo/3y/ZBADjSMxjQRNsPlFD4IJK5t+lRWahT1hw3+qal
         4sNoMxkjvtB8pnf+VrilX+5oOAwJMDX4AIp0Qz0MF9SxGZe3tKlEW3VjinhlmJWjPsgy
         J1Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nV5AgOGSN04hJGMffNJcE4hBp9V+wdqeGag6kEI7uUw=;
        b=r2Uf5Fu/w13G+Zro5Df2cGPO/tBjgMqMM4mXnew6gGTeTOcLWFPBmpKSLSN3giYOTR
         sSzagrY10UsaEBKOqYfxr41XxPvJ8Bbixm+/RxC1jLVTekz/bpU3+2Nsgg4ejXK/Z6K0
         2zqtOlgcFsreSD0PRDLl/kpxBsIrBggwUtVHhLg2irEgXc+9FiHfFCXJE+MsTIYepe3u
         dgFMgxFMt/TpupQtubkDpGfCQ1oRh8kLJaA432sU3eVY2GqaWkrmP05hUTitvDTIN7wS
         OlEWd8aLYghHiPgNaCc2DnSSmElC89mD5XuVB3n7/RFOJ4mDwHl9m+w17Nx654YLuHaB
         xtVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nV5AgOGSN04hJGMffNJcE4hBp9V+wdqeGag6kEI7uUw=;
        b=PnzV9vLxgja8BrqFesXrApPpW65nzFr7dzgk723Z8VW9huZ5ix1nTbB/R+OHRXqdqC
         gAH2NusV6+12PPJm0nqnbspaaZmMvAarirjk7k4zTyKmKxsS7kKuk/nmITLAEKWxtjlk
         pExkignnJxYTH6bM3ePEXbwBUUTbpcDkylGNE7vQ10uP5ltsL2SpFqczJI5CEb+hXgCq
         QqxhWi4DP288vasjiQOklUobvmXgR/xZZ6uCXktjzjexej0w15Fd+q2unfn9exC+a+7c
         upei1k6hht+XiOsUgOMyH2LkLS6gdr0wEITh5CjkwqNjv7MKmlEt4uNUSuJhaFs0/MmJ
         i/Kg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ1CvXJub6cKmNwEab6M6k/it8PCQGV3EzwhWw3M6vzvHW79wTUL
	tQLJA3yE1ci4AzjcIeukCjM=
X-Google-Smtp-Source: ADFU+vtzg8znAzYG17l9mGX/7Kx7GQ6iXxq0dkcmdauLtHMe8trIme6NiQuxgMHbovuxcVxuJxHMQw==
X-Received: by 2002:a2e:9d84:: with SMTP id c4mr3293914ljj.51.1584183591225;
        Sat, 14 Mar 2020 03:59:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:10c2:: with SMTP id k2ls1822264lfg.9.gmail; Sat, 14
 Mar 2020 03:59:50 -0700 (PDT)
X-Received: by 2002:a19:6101:: with SMTP id v1mr5342174lfb.56.1584183590286;
        Sat, 14 Mar 2020 03:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584183590; cv=none;
        d=google.com; s=arc-20160816;
        b=zJKlCeRSnFyiBAvzXv9tSVUYTtXBEsMBdb0jSfkjkgBglH7RTLu1Dr6otBdG1p2ipQ
         AII6EGOibbXsnLRRA4yw2E33wbDHt4cx04Sxq5f180/4OmHzLoNvEalSbol7JQVv1IbU
         kkMmLZSXeaEVjSs/SbrgDpawQjSOAEob/KJjyZzn3mS1AjmAkyy1Y7UjMLVX/k2CBR6N
         xgDUu/tkdXuv2b7tyES2dhyXYiC6O5iPw+k2XzsoOYno21W4iNYfrM7Km0OUUANA46bb
         LRX0B1rN9sh36oAvCW/j5bOt6wo/MyjLMnNIOtnmjZMSAl4FM+uFjQcllbPgryWfnueK
         xwzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=g01xlTcHoCeW8HA/Zoij0G1oenw325gwe1o5DluyjVk=;
        b=Z9U/irmR6NU/MAfJGSjSBSSoitEz+HHrxO7qamurjNJkznbHOeyskOo1ChPD6rAQjo
         14rVMKtxu7VEM9FJ3lUM7KoylKuWim0JwtWInwgxgRv0J+qQwLUF8gdLfz/ojs+GcKet
         1QxRQqnf2Fv5yghXpmZlHeObr22JvtoFVimvPXFNi+d2rX5fgPXT8pMJolPTR+YfNOlY
         eWq4txLw+kHeYpXjD6unuNf42Jk8EyKuHgq8SQe+nnwnZpuMZiYI/O29OOXOGp0/8iee
         wNmqqGlIi6ckMBIzt/vCnIQi12uyZMiDCUHnb12Ic5A+kEfPtEnH+PVGS5njfZgWegoZ
         izsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com. [209.85.208.65])
        by gmr-mx.google.com with ESMTPS id w6si542109lfa.1.2020.03.14.03.59.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 03:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as permitted sender) client-ip=209.85.208.65;
Received: by mail-ed1-f65.google.com with SMTP id v6so130265edw.8
        for <linux-ntb@googlegroups.com>; Sat, 14 Mar 2020 03:59:50 -0700 (PDT)
X-Received: by 2002:a17:906:2181:: with SMTP id 1mr15328632eju.131.1584183589584;
        Sat, 14 Mar 2020 03:59:49 -0700 (PDT)
Received: from kozik-lap ([194.230.155.125])
        by smtp.googlemail.com with ESMTPSA id f21sm1538993ejx.41.2020.03.14.03.59.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 03:59:48 -0700 (PDT)
Date: Sat, 14 Mar 2020 11:59:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Vineet Gupta <vgupta@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jiri Slaby <jirislaby@gmail.com>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
	linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Subject: Re: [RESEND PATCH v2 6/9] drm/mgag200: Constify ioreadX() iomem
 argument (as in generic implementation)
Message-ID: <20200314105944.GA16044@kozik-lap>
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-7-krzk@kernel.org>
 <90baef2d-25fe-fac4-6a7e-b103b4b6721e@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <90baef2d-25fe-fac4-6a7e-b103b4b6721e@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 12, 2020 at 11:49:05AM +0100, Thomas Zimmermann wrote:
> Hi Krzysztof,
> 
> I just received a resend email from 3 weeks ago :/
> 
> Do you want me to merge the mgag200 patch into drm-misc-next?

Thanks but it depends on the first patch in the series so either it
could go with your ack through other tree or I will send it later (once
1st patch gets to mainline).


Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200314105944.GA16044%40kozik-lap.
