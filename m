Return-Path: <linux-ntb+bncBDEKVJM7XAHRBFXW2LYAKGQEH2X5IFQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id AFCB6132C8E
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 18:08:38 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id i9sf219478wru.1
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 09:08:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416918; cv=pass;
        d=google.com; s=arc-20160816;
        b=aNblA6ehefZ6i9Xru5lOdNoMvF5zlCp/ptsHIuW3/jZQioXk87Df8TetLxMAmakjdz
         kKEiV8YQdlsIxGyuv/E3GvTgiwD2sGHF2WJKGiaQVlLi2tvRHKpm1/xDkZCchUiENE2w
         8ABh8Sxtd3iea6FfIZZanGGUQgYgKUuYEDNYtAl/KJeSDmdXMJK8IbFm1erCmSuNVbh4
         JHLBgQr2OND9oQG/2n50H+UbccAf0jx88obFImGRxgfpYnz3FwnfLrBDe47MINNClOdw
         QtfZhVzSJIuj1QbCBhuLyEnbp5TwyvLS44IvzVAvZrhP/Tc1l+Kob4PbAhVX/iDRzMz4
         XhSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=glc1e+1QJz8pFVYkSlPwfFxmRV3hMEsCu1Vf3NvIxyM=;
        b=pYfzjNFL1vEpeiuyHUkDgVk7VCuIVy58dahOUGah5GCdoi4fg52mUupQPz2n4hJICL
         6dJuFny+E+PKaZqprUW9WSfVnJbzQQgwDAOfV/YuZLT7o5mVfqpMp7hcktIX2wcuZ1tv
         Wp5Z80HW00j1kVgMIfqR2vFPO002eB/tyQzDw6ODW1e/yWlzbvs8vV4ue+/1Uht6dUot
         dXSKGtmAwee82Oib7U9nXFEzosHD9pEE9aiSHyL+r0lVnaQVCYZkXTNUeTQniiROHFzV
         HM/ickZ+TGLMGrf8aJVmNraKf6I76qB2+HjC+DGAyyQoUVrHQq2JK3Bma8bpPHipW2fG
         YTMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=glc1e+1QJz8pFVYkSlPwfFxmRV3hMEsCu1Vf3NvIxyM=;
        b=MimFj4uOPcTPQwYTXVg1Ru7eum7tP3E2oTlOhvzWwhcTyf/LFx15FlMCgFoVH1rKQM
         GT26nnuLyAI97ArV4/xvC/Yl/lzZNwKrNihpqntGcWjW5X//jI9bE1aH96UnRXkAli9g
         lXA9WAOCgeFMohTiOvDOiY3zKw8xFkwr6MWqqywFoK9/ZoqbwhVzs9SLtGP10CAPSE75
         PA6mw4T1kYflQyMPEQMI7rTLZ90MiDLFDi65ZmPzs8gI1G9bm8at2SSk9D5fzhV/hadR
         MCh2u2tUSSV3zc1NPvM5U9gknnPFxb7Gy+1vCsAoEpOcxfEO1nZSEKdgv69hZxMzKlhS
         87ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=glc1e+1QJz8pFVYkSlPwfFxmRV3hMEsCu1Vf3NvIxyM=;
        b=U3BnKlAapZ3jFQ1NLgtIZ1ilti3YPBBWjrBXdBNuYjHGAzMrZuBHi7y/5NV7ms1nx8
         +/ritX7rEOo1xi36/hZPdZFn5xX9lSL3LE9qnPSH/CLwXHmy9u8skkFwozVOpVdnx2lM
         lIiNv55EUoKJuw7YmF8pOklrAdBGwJnXkUKfodQHDzRmmwgCUqHiwxv2yVaVT6peXJyd
         MVGZ7dvEre/YqCL7JXbazuXZmz6qmTf8EAW5K77aFamvIMGdtLQF3Id6F/rTSiC5YJLU
         qHJsoRyUkVlrmTEqBICpsdwk3uDRrmG8mofASNAnjbKB+5dgv2jSkVbgPpJBZNBIWJGG
         QwBA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUn5oWGuaA3ls1eKhMgb6QKAmg5gEQppiI8sCLeCtvssQYABisR
	vkCL6QkGP090tht3HfzhsfM=
X-Google-Smtp-Source: APXvYqzegR4iNusi1a6so2NhIhfQ60D+8emcBfP2KzCkwMsh7JlAiJNzy15+WezemyPP1AeZxqfL3A==
X-Received: by 2002:a1c:a50e:: with SMTP id o14mr97076wme.2.1578416918334;
        Tue, 07 Jan 2020 09:08:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:4682:: with SMTP id u2ls14111455wrq.14.gmail; Tue, 07
 Jan 2020 09:08:37 -0800 (PST)
X-Received: by 2002:adf:ff84:: with SMTP id j4mr73008wrr.27.1578416917843;
        Tue, 07 Jan 2020 09:08:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416917; cv=none;
        d=google.com; s=arc-20160816;
        b=v8f9mOcjt1mB4VLeoWR4PTeSwVqh6dvLq7oHDteLz1KG3jbFWYb8o8Oy1n5XWXukCJ
         hBhufyrcEEiBFVqobpkQhvfBEmb236jaukmo9ZMvT7fZQV3FV7gVYvvBuOsqsivpp/TL
         UZQ+/FCLoJx9Yl8coRsE2/GRF5AT0afuVzkg6G4J9lFtAoBGDv9OjxSmTpOCB+LCAqCe
         hPpshdaUG/UsIm1Ttf5dLazFUQ+DJN+7iBnJ8p3pW0RxbBYIT6xR5DX0pihG+v0ie3+i
         4+C/8wVM1veANRsResC4vN2aIjbVzH+E/E6FyjMlNexKqox39C2SOADBc0sKijt842+R
         pVZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=zo/0lu1QP0Bvtivv9ULdjV0TVIzeEr2nl6AynxT5VzY=;
        b=i/8RNuYqmIW+pTUgNwd7XMERql8eUn+IwH4Et535+sgsAr5Tc1ErlZagwqlmmBkJ6i
         x6utc7ClH6Z9cTs3v3fBkqyHCqcFYWEFvixviELjZEENJxViCpWnyRrBnRMccy10vJbC
         dOT9XzNv3JRvrjS+weWWqepayCQmswWFdeOSyB7U4jX5s93ti6xDVUN0fZU97RWJVP8N
         +6njSnWoTxOgIRFo59KsrpTCqFUZvO0kBJBzLIbPWmHY6+V+FwogpPfQaUCKIa1voDDB
         sKc+V7BLTmngOypbzPB86hVs8uPOw8CeRhy4SU9EMSts0tb2cS5fyqsbHRPX1IP2K80k
         N/bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id s82si10934wme.0.2020.01.07.09.08.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 09:08:37 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MtwIW-1jghS51Gu4-00uMpU for <linux-ntb@googlegroups.com>; Tue, 07 Jan
 2020 18:08:37 +0100
Received: by mail-qk1-f181.google.com with SMTP id d71so59617qkc.0
        for <linux-ntb@googlegroups.com>; Tue, 07 Jan 2020 09:08:37 -0800 (PST)
X-Received: by 2002:a05:620a:a5b:: with SMTP id j27mr335658qka.286.1578416914895;
 Tue, 07 Jan 2020 09:08:34 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org> <1578415992-24054-6-git-send-email-krzk@kernel.org>
In-Reply-To: <1578415992-24054-6-git-send-email-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 7 Jan 2020 18:08:18 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2eMB34Qd=U_9vGBCN3m5Zh4qDhyEpGH6M=M4e22aPQLQ@mail.gmail.com>
Message-ID: <CAK8P3a2eMB34Qd=U_9vGBCN3m5Zh4qDhyEpGH6M=M4e22aPQLQ@mail.gmail.com>
Subject: Re: [RFT 03/13] sh: Constify ioreadX() iomem argument (as in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Henderson <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>, 
	Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>, 
	Vineet Gupta <vgupta@synopsys.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri Slaby <jirislaby@gmail.com>, 
	Nick Kossifidis <mickflemm@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>, 
	Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>, 
	Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>, 
	"Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, alpha <linux-alpha@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>, 
	Parisc List <linux-parisc@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux-sh list <linux-sh@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	ML nouveau <nouveau@lists.freedesktop.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org, 
	linux-arch <linux-arch@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:YrjB3F18JlEWQWd9qiz0cT35g/E1j1v88Ig2EKyzViPZObjEZKs
 flG4chIhEsaRR+BnKsgwe1Se0hl7Z/Tf9rA+zM1OYRezuzvNe5ro0NNM2WaAVRRHh/tEeeY
 6d2Te+/H/8QQbeBPbHYkUlhPJvUBvNUJo6E7M+Agkm1aYOW2QpTczkr00ZaPR6fBSg/bv95
 qYzVCZ0HP+DFPUKY66Abg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:hAUtMBDsmmQ=:5mrz3GIYVbtghhG9QCs1XT
 yP8bDRwasivsWJu2R7KFk8zUeqthICqZ7PnRWrDQ1r3nCn+kKVSrHLoQ/ak40e5Xo85MOB8uF
 2qT3GRpKKRtr9iLyyXg0AHQVezETpn70NyPrN9EE4CI15YfMolwFezkNHO0Cy9cA9GybEa0EI
 tO3yItNB6cbL0qU7zMyDXIQHSJYB7P4Gdxx+TIclVLmbNxziud8HzNmeZ2CidKT62B/oaFO7/
 dZTvdcW/+IezWbDLT5K5MYbWqdDQFSdXxWvTVSg+//ORpGxqLHv5H0YXyW4S/N8VXik2z0VM9
 a7+0EzppT/FjBo4cxY/A9qzH4MzoWO+cSTsmTVtBJewrKq9h9SvtFhcfW7voQPIWjYOk9xlSI
 0FfqxFaI5GMzsThL59ZSZaj5XjTbk4YhdoGVBzwQhZ6jTgxocAWPbrH0Z66w6dW4JIrRclWpg
 dnlqrxN/D2x8QzE5Slh9M7DXH0Keqzj8ptMCGBFwaoeNHxVdDINnPUSv9QG0K+fkLkdaHu+f9
 Xwx0Zi4XXSioRgmf2ps9s0qMBAe/2X129cRXBFgHqv1an9KOsDEK7EhqDt2dpoSNO47LfYHwL
 lf31BNuUfhJ5sBQTM3OCyAcCuUgSKJuEMAjuQpD28lIipzvvfIUUXPCqd0snLYMRCcbgkFvbV
 NfbIwcSwbpFpzQxhbkBCJeBXmVdQM2MU3qs9ab55C96LMR8H4VilhPAl2XvwSaIT/h5ERctqO
 Md9enEufFKrcNCcUmRwZnLpxBHDDt/tiyuM/h/YpZibsIH8oPFzt5DbcReG+/eyrvikoX3FVG
 civOxqJbv4Wq/UR3UGrrzIH3TM1OoZwle3IaJwWwiyO2+qg87M+InM/exYpjJ3QyQOHQnDEOs
 wL59pSR1PeAFTVa5AfKg==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.130 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, Jan 7, 2020 at 5:54 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
>
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

The patch looks good, but I think this has to be done together with the powerpc
version and the header that declares the function, for bisectibility.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a2eMB34Qd%3DU_9vGBCN3m5Zh4qDhyEpGH6M%3DM4e22aPQLQ%40mail.gmail.com.
