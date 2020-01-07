Return-Path: <linux-ntb+bncBDEKVJM7XAHRBA7X2LYAKGQEKQEGJ5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8705C132CA5
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 18:10:27 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id l2sf41975lfk.23
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 09:10:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578417027; cv=pass;
        d=google.com; s=arc-20160816;
        b=JzDCNTDoht27HBp7pyo1mq+9jeL5PXktP/9LM09gWbd4O8oTCIytB1mwaDpLQ/OxSA
         n98C5pIdF9VRxkqChImC/RWOCgcKFAsJ9hLBRiTwPLbcZN3KwDFUS3J44jUHCwCWlGK0
         WmhvuIU5TvYDA3m6Yu4ZiGeQySQCeqNDhh+/CLqKPVY12IJPPxQ3BlpXksJjaZRYGNvz
         bUNiETRw/HrZUOFiAfHrTWjEfXC2JtPdaqbxzreca1sNVcAkrvX7oXeUDif0T8DVbR7x
         Gv+crS1gke25xtmd7g/rfxpIdq4vBxUm9WwOMuCa+c3mJdLDl4pHEfqPLS+mE/PsWOoq
         UJxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eVOFHV3RmmXxjN0JCxvXmGfJ3FufU7EicU+uNtAowtA=;
        b=bHUt87Y6j1Mv+K8LBvzu06NZu2kfHgAMg5DIbA8Ztm5rqfyrFKpYqg8TAkjLxC915u
         wfH2A6zh9hxVeo9n7k3JDG4ifG0xrphKmwn9TrtCwxhE1VZq1ORtq7kaTRc1eYxCeFwv
         l5qADpg0WVlEln3I7ncjhTgrLgpW3wUG++eatrtCqRDJGjXCBESRpvSOIIL5F5F2cAhD
         AmmOFVhnG7zyPski+m6D3j9yzkYC+h7DM6qg/aBJNRRGDDWxQbz1SCHfU0nTJT5nphku
         9pFiz+1jBjB9M0n+4PZ4pvqDfNW1DJCYjF3fCTqIviyA++O72pVok4tFddL2ByblUAQd
         7X9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eVOFHV3RmmXxjN0JCxvXmGfJ3FufU7EicU+uNtAowtA=;
        b=huKcuMppIWwSMGeHAE2El+BdBolQerzauq0Op0ULPEEQ74iarpak/JUarOwp8FzAkl
         nY8ICqnIV8WB46fb3rBdOL6nC57a+/MqLwkB+EojLcMzyYTpSSxA0fcWTneawoPpKUJJ
         mbjc3EmtEy3PyoBojeoMwMnqYKV/7SaYpSZCrXHDYKzqc+Dpyu7Ho/XzY5XoJgdCO52b
         iz1zmJdiAQkpADMZakMeD0QuCieukVi4AY9faOBdgW4uMAvzzhzBnQfJELjUPkGcG+wZ
         eX54/ncgM5wuiHJD2BR10QwQ6EwPnn7rbF/n5+N5FOhyt5rfPV5jvhMLC1nvnKx0YqwM
         X7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eVOFHV3RmmXxjN0JCxvXmGfJ3FufU7EicU+uNtAowtA=;
        b=JppFkfRAIPP1m8nwnDRca2shWRv1730RYSSOTujQMJcBfuOuZdBZTPFkp4l+0zye+1
         umxkCNi2MbLr3/S56pfZp0H1p6VaVoYyMe0DVQM7TSkc5yfZWyXOJqFP9FnAnD7GnCZR
         L2HgUb2qm2n5QkhPVRZ1MN0ndzH1T6zQrtqYu0hhWjjtTRgiZcrlbHkuIAG8E1iyzljD
         ALAZHoFSgcX5VXiEBBTEPlYY7yZ7ESfOwb0d0TZ5BwQR/QZywdBW6oWGGW+vUGxkbBW1
         DNmkoe3mCzjK8VAKjiouQbpHumKbMcZ3/2apteu5GGGq2ToaIziLXzu2Dzdd1JyGNF1F
         cVww==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU42NOLCtFbxzuxAQdvZwGkm326MvNQ1fWikl1oyc9gXzSPfckE
	isydtwD1at7t4yzcUKGXfdU=
X-Google-Smtp-Source: APXvYqzTij7RMan4AnAMT+kfKbn7sPd+gcIuwHke6BJll7iyBv73TdMDqESEuyIZEqxWl+KD3jmOlw==
X-Received: by 2002:ac2:5b41:: with SMTP id i1mr296225lfp.82.1578417027180;
        Tue, 07 Jan 2020 09:10:27 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1051:: with SMTP id x17ls41374ljm.8.gmail; Tue, 07
 Jan 2020 09:10:26 -0800 (PST)
X-Received: by 2002:a2e:a37c:: with SMTP id i28mr318041ljn.118.1578417026650;
        Tue, 07 Jan 2020 09:10:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578417026; cv=none;
        d=google.com; s=arc-20160816;
        b=yVPGMsOo4DDiv7yFY6cMezL6aXSFJnMnZEaVaAUzytlFYqVoUvS72pJWLy4PN9ZbFz
         LFb+C7OOMEyPvjUdG1nMGqa2sS1t5jQ49j+xLmF3ky7fuMNhBQeI+VbcCo2FvTGhESjl
         SfzQS9uVzoiulxQOnhDQcRM6ltqSMmDolDpmMxdFFsO6KSmd38YXpZB6wMJ7WE6BbUyA
         CsLZIFYE6myNrIwpwXovLlzexDYy8+21r+fiuqbukj1nIIoxWdbDb7hKNeO8o3XY0OKt
         L3E9TmepIGpttZ1LDY3y5ZMLfIcuSgTSMSqPL7C2qN4VPV7l4sd6RYAh3M7jCLGN00E0
         GYtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=J5UkzRWFCwEo1Ec8J9tM4llOWm0ikSw0ibdufU9cYrE=;
        b=FKC0LqZ0EWQqBH5qwaXdvS8v8dtxuFYKGOk7yuWdQX4HhUD79AADrx1rLmvHZ4cI6T
         kN1vCg7B+W8ESk5Ect1IZdakyvDBWyN/5fq0zwmTfoWWkjqt0ikCosiyr/Z/u2tgWXrQ
         bmKjfG4jDu1kxpAeP5RrCsEFBC8h/gbEbTsvZIbK4MX+LDzJJX5ssv2EeV18toNqPCUg
         ksZxJ+DakuYqmJHWZcBwWSUhvPQopev/FY7l/QwEL56CmnZoT+QcPkelWjOQlp/N+++z
         JwQrrNc9ALU8/du3hLrGCaYLg6bRsNyDGMRffR3ex5vkWcD13YuwcXSL6JWCx7uDahDt
         PWPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id 68si9784lfi.3.2020.01.07.09.10.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 09:10:26 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-vs1-f49.google.com ([209.85.217.49]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MZkxd-1jAcOk3RwN-00Wlsd for <linux-ntb@googlegroups.com>; Tue, 07 Jan
 2020 18:10:26 +0100
Received: by mail-vs1-f49.google.com with SMTP id t12so34332864vso.13
        for <linux-ntb@googlegroups.com>; Tue, 07 Jan 2020 09:10:25 -0800 (PST)
X-Received: by 2002:a0c:bd20:: with SMTP id m32mr365813qvg.197.1578417023930;
 Tue, 07 Jan 2020 09:10:23 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org> <1578415992-24054-9-git-send-email-krzk@kernel.org>
In-Reply-To: <1578415992-24054-9-git-send-email-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 7 Jan 2020 18:10:07 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1RibnRU6SiVjrOy-q+ZDdKacQgD9mrft_aHMgA9hm3PA@mail.gmail.com>
Message-ID: <CAK8P3a1RibnRU6SiVjrOy-q+ZDdKacQgD9mrft_aHMgA9hm3PA@mail.gmail.com>
Subject: Re: [RFT 06/13] arc: Constify ioreadX() iomem argument (as in generic implementation)
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
X-Provags-ID: V03:K1:DR7Fy4iNXpyZh+X63GyU1jmVvEJb1auaUQh/Iu+4ljVPYxAbk3V
 E0gwTcK6HRSJBlEPagNhxpO7isBnRswIG/bskpxk8esNoYdRmusSDju9Duuy+TUEwBoZ+9b
 0BzlcWpkBZ+Z7FeriaNK8av3BeVWmDy6tPJt1bjsVG0NykBUurs6pnPaRUfR6QuoXUb6GaH
 pZeSTPEAyPQGYWvRP1qEQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SOpNub6txrk=:BvG3d7C6wSRc6WIw9G51sd
 SWmSmaVxqdUnyJkJjpwDqs8bUq3JycV1gilg/KFvBqPh1PxcTcthE49abKCzXuPo8E3xxHWWK
 0xcDgZ40TVlhvYABHhhnL6KNMCngyyQgTXkesgPOi653z1jgiU8LIb9tqOSoWi35nMkztxzFk
 m0d660D2TLSxVSrDvYDwRgEe9tlQBTPYw9NpGY8tLqeVevSB6Wq0tedXCsDkzu6HZHelI5YwV
 +2fPRjNeyFZLxr3IHCfBSNpqxtz3hJUifpYrzznWzeyvM8jncLWBT3wYuG5aVnToPJSiTo7K9
 Hs+Euxl4hzOs9Az2FSnSZvez4ESEwulZ1RZvwUuAo/HFo1mmfNNtlx21utxIxDHMumNTJRn38
 zpvYowZMhpFcueRU1rj0nZwIOtc73mghAmvXoCKDIXf+zgj/C9+oS/wzgGLa7bBaISJdQt+71
 SwAKtfaYgVR5zu24mDuaOyrDLcYw1vXgGRxqwEX5OXJL2RN8yRagaPKHbVbCrIWADdsOTrh03
 huW3HOndOwgWIop+UYz1NL1NxHFe3H6uQKzSBDGr1dunX9dXuwnWeFrcOuwmqbWKaY+HXuz0J
 8AT+dPewj/Jtv45KG415QHtFresB3uoYyqNyD8T97OLvRYCQd+2PWw0zDX47uKEaP+Fujcpey
 xMhp4Vfho2qc4VJtFJ5W06gsCBPgBfMQUpODn5tkRl6QMAIwhy0AGjOXaQ4mUtVMas6FlFaBA
 l37Cv54cGyKuoAxa4j6/h9l7dM/CGuvCUZjjmeWg6tYL3opZfsq1845vEiGDmTlLQlWD6RnsE
 PRvXLX0+jdsxpeYK2Eolkb0X3Haby1+Idb6YtTh2euqBOuj5Zc2xSdCh13eTJ2BldLBBeDkF4
 uRaw+LCDHJYYWr4JaJCQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
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
> Implementations of ioreadX() do not modify the memory under the
> address so they can be converted to a "const" version for const-safety
> and consistency among architectures.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

The patch looks correct, but I would not bother here, as it has no
effect on the compiler or its output.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a1RibnRU6SiVjrOy-q%2BZDdKacQgD9mrft_aHMgA9hm3PA%40mail.gmail.com.
