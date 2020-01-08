Return-Path: <linux-ntb+bncBCXLBLOA7IGBB4FI23YAKGQEXTN5RNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3E7133D3F
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:36:01 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id w9sf200725ljj.8
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:36:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578472561; cv=pass;
        d=google.com; s=arc-20160816;
        b=lT0egy7NVqtIkeoJPNDR0ZejjXxRfvXKKE+ZBnu1yGjlkB0W3MDX18EFQDnVsz5gjq
         uorGC5yI9auNctof36VFhrsyJfFnl5YGdhGwZe8NMs2rt1c42v+QHvPPP3f15VU+Eu/Q
         TX+clpmbXNNa+d9/BTXaJy/6AHdg4R3BpjI2PEGsZNrmpgVQgva9ZDs++IJvch1BgIqF
         JYGHBtWwtAW+L4wWPZlYR0t/kKKGTnZYFVAoeqyHyzvTzqxrs6fEwaagMn71Rc8aZPML
         nwU+EDgmVppsD5oV3mw9Vkdgb4CJLtTXi2yS1pE33m0obrZtmRIK5D2u3u0DLDHIAFFa
         jzzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=RQP/UHuw2QxfeF0/C+BpqK/nxo9mKf7NzZm4V4nljbQ=;
        b=lryDwpJyItYcp1ihNdrS+4sbrR1uC0BP2RwcDB+SQ80t7HsOeCWwxQ3kJLmrhjNOA3
         SMHF/Lyb6H/d26DeM/i3JxtWxvE4i1v34JC/UHpMTwP/XCqbuvY+Za02g4926ce/9pqZ
         eTEXGoRpdAZKrI2A+WS1iPVXcC4yNEF9MOXGee2McEYuZmfAPHUvOaP6D7UwVyyyC+RQ
         Uqnsu8E8WzIxkDPEMIZ6hjl0VwcpMblJlQA+nEHHrOSTrct95R3HvAN0jnVwPbiP5MKQ
         XjMqpsZWEHwc8ZR5Z3oSwO3zR9+sYju8Fr/l950DART9lg5KYT8oofd7BI1AlWGUruFT
         fkww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=fxUelGuu;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQP/UHuw2QxfeF0/C+BpqK/nxo9mKf7NzZm4V4nljbQ=;
        b=c5OnuBwCqxOie4URj1MTxr4aBQoPi/A8TwvLrt5UNBPCDdJZvEWH/1AANp3bEVEnRV
         cAsTu6YDYsGn8YdkmfdZF8zI3qLm3IOb7kUWri9FwY2n82PFhHUUtRAG4Ep67WU6WXLa
         V2xPC75odrHZNybozMyILh8Kk1LCLW/AwjF7rxMb7CnbxBVxJBlaFBKdYKkiEJohPDCq
         ozQdUJan5TnkdlEfo7yABusniiATcHhdQtKswkhAz5JfrYjrRuLH+DgOoKUxPjb/A1g9
         nkCor+B8/9PC5REG064VuqV1nk0/U112iMFKpPv2BRTzivUjrqy09i1asv1FFYhPh1NM
         I8Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQP/UHuw2QxfeF0/C+BpqK/nxo9mKf7NzZm4V4nljbQ=;
        b=cRuBXX6D27x5g0g0mCysj5zOomQN3/+pj1qKG5Ae1Hpok5Ndwk+fAnnmAM7ZLZr6r8
         mABcXAcg3KIMXxAsQrj5SJUfjr5ecQB9qf88qoG+/imwDt1DsoVpXCwCHsJJqBN+EwWM
         meV7Gjjp2WY2lANS2JF+2q1wXKvCyOvNFDI1KPgmt5D8qNNb8cAqZEEiuZ0qoSfDPPVs
         Flkl2gkcc5QbiAP/S3goAOXO14PslJpy8m505Z+4VPce9PWZ/IRBLWWKUC3rLWNe1ffX
         KvpfYsQ/nnC5L45fxZHLIBKk0HYyjcWUL+gSA/mPX+9LZccofjyauwzKuS6QHaMO0IVT
         D1yw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWGDxuuHm/mpAnh0RKAlAnQN8+t9i0zDRCynbnE41vNkoPAZgid
	4TSRyxoT62ZraVPw3VWcFiE=
X-Google-Smtp-Source: APXvYqyMbDOzpiOeHaseXbWHis3YCZXpFWyVq2fuIsoSMmpZ57GX9sdqj4c35dMAoVkBEM6F1D8JCw==
X-Received: by 2002:a2e:9d89:: with SMTP id c9mr2233484ljj.129.1578472561215;
        Wed, 08 Jan 2020 00:36:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1051:: with SMTP id x17ls271561ljm.8.gmail; Wed, 08
 Jan 2020 00:36:00 -0800 (PST)
X-Received: by 2002:a2e:9883:: with SMTP id b3mr2269417ljj.80.1578472560366;
        Wed, 08 Jan 2020 00:36:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578472560; cv=none;
        d=google.com; s=arc-20160816;
        b=ImsF0GpgxtwxUcDATscsQc0IRFAAVHednoHThtCheNtPjnVuFF4Y4ON9pm9dfey3Xa
         F5ois1ot+dSqydgva+A45zy8gHtu+psCo3pmh4sJl1a3y3hZIeMPuDTXrvMpFe7nmAg7
         O1OnJojI2x8KPSbVbfsVu0NpD5ITd8DHpfGdWcnZk+B0YoSu1HAXm+d6I5eQk+Qtpk4w
         s5dPN7AnU+Ul4ZWVGXeoYT9TCLeucin5ALBzij2ZO4FbiCEN4Qt4HuezQ1iJJF3C/YIK
         piOwKSBsu3aRT/+/Uel5eI376A3hiqmFs1/CIyB5rioR1muWfbg59MFHkzZ2Gi57mP2d
         PRaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=pyCqgPPZ7kRofrDb80nScePrylWdxYR2l2/ULCClPrs=;
        b=OJtONOsjwUFuiubPlF0w+HYnlmqMKCQB0e7EkLThy6QsojZN+9yOSPjv00kWeAabca
         yWM7oWeuEXxckWc4qN21bek617bxfVbCDKb0t6G+cjm/fm/rlPi6C+07CJzB2pZDOTsW
         z6yb/SWt3L/sqiBEaBKq0ccnzBiqgUbOhQPvBRYW/8FbNq6BYXVMaxcH+P3PjQRHUPnO
         jt4IVunon9Le8yRzmJJrn8IhIOaEIHgNjZaLlsZT7Mrp9nLPFfdWX9bUvHKxgXG+uT4f
         tAEIGaGCkI5TOh2sQjGvvAVQ3UCAAjFmbSpZNc691jNM7FTQEZKXI7VAQD58aqbNSOhm
         na7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=fxUelGuu;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id 68si96063lfi.3.2020.01.08.00.36.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:36:00 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 47t2dP2tfYz9v3gf;
	Wed,  8 Jan 2020 09:35:53 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id I0TjIRBHFA-4; Wed,  8 Jan 2020 09:35:53 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 47t2dP1Xwtz9v3gS;
	Wed,  8 Jan 2020 09:35:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 2FF4A8B7EC;
	Wed,  8 Jan 2020 09:35:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id PkGUzhhRpTGx; Wed,  8 Jan 2020 09:35:54 +0100 (CET)
Received: from [172.25.230.100] (po15451.idsi0.si.c-s.fr [172.25.230.100])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id BE1C98B7EA;
	Wed,  8 Jan 2020 09:35:53 +0100 (CET)
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rich Felker <dalias@libc.org>, Jiri Slaby <jirislaby@gmail.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 netdev <netdev@vger.kernel.org>, Paul Mackerras <paulus@samba.org>,
 Linux-Arch <linux-arch@vger.kernel.org>, Dave Jiang <dave.jiang@intel.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Helge Deller <deller@gmx.de>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Alexey Brodkin <abrodkin@synopsys.com>, Ben Skeggs <bskeggs@redhat.com>,
 nouveau@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>,
 Matt Turner <mattst88@gmail.com>, arcml
 <linux-snps-arc@lists.infradead.org>, Nick Kossifidis <mickflemm@gmail.com>,
 Allen Hubbe <allenbh@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 alpha <linux-alpha@vger.kernel.org>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Kalle Valo
 <kvalo@codeaurora.org>, Richard Henderson <rth@twiddle.net>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Vineet Gupta <vgupta@synopsys.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Jon Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "David S. Miller" <davem@davemloft.net>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
 <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
 <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
Date: Wed, 8 Jan 2020 09:35:54 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b=fxUelGuu;       spf=pass (google.com:
 domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted
 sender) smtp.mailfrom=christophe.leroy@c-s.fr
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



Le 08/01/2020 =C3=A0 09:18, Krzysztof Kozlowski a =C3=A9crit=C2=A0:
> On Wed, 8 Jan 2020 at 09:13, Geert Uytterhoeven <geert@linux-m68k.org> wr=
ote:
>>
>> Hi Krzysztof,
>>
>> On Wed, Jan 8, 2020 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.org>=
 wrote:
>>> On Tue, Jan 7, 2020 at 5:53 PM Krzysztof Kozlowski <krzk@kernel.org> wr=
ote:
>>>> The ioread8/16/32() and others have inconsistent interface among the
>>>> architectures: some taking address as const, some not.
>>>>
>>>> It seems there is nothing really stopping all of them to take
>>>> pointer to const.
>>>
>>> Shouldn't all of them take const volatile __iomem pointers?
>>> It seems the "volatile" is missing from all but the implementations in
>>> include/asm-generic/io.h.
>>
>> As my "volatile" comment applies to iowrite*(), too, probably that shoul=
d be
>> done in a separate patch.
>>
>> Hence with patches 1-5 squashed, and for patches 11-13:
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>=20
> I'll add to this one also changes to ioreadX_rep() and add another
> patch for volatile for reads and writes. I guess your review will be
> appreciated once more because of ioreadX_rep()
>=20

volatile should really only be used where deemed necessary:

https://www.kernel.org/doc/html/latest/process/volatile-considered-harmful.=
html

It is said: " ...  accessor functions might use volatile on=20
architectures where direct I/O memory access does work. Essentially,=20
each accessor call becomes a little critical section on its own and=20
ensures that the access happens as expected by the programmer."

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/2355489c-a207-1927-54cf-85c04b62f18f%40c-s.fr.
