Return-Path: <linux-ntb+bncBC6JD5V23ENBBRGCZ7ZAKGQED3USB7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA2016A8B3
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 15:44:20 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id t20sf6803158eds.19
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 06:44:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582555460; cv=pass;
        d=google.com; s=arc-20160816;
        b=fgAldl4pQwslYdw34VxOUYLCz8ZwnWtRwytQX7160pj1+eRLRAXdY0d6gC+5/3539y
         xfIUcFDouf2esPa55jPjG6AAFmPDJjOqS6ub39ssSPGAxOpHegRCecsUaTyU464v+7Bu
         Hdb0eraP3GW+kyNYtHtjJoj767r5pPMptdKZ0Y2BpGI9lfZ2RgZ5r98lDmI+GmQkYmeq
         D60hlbPoj0czQ1PGjzBTTc3PxhC6UhWqRxbwyYS2CpRjboynYQSL7+JbI0oLLf7G/Cch
         aHksn7VlXItyoDFiJClKOIHeWSGFz+EWFmNMHH7YeA9dKxkficBhcpRUTwQQGtHsPvKw
         qnCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6GnknoX2nJueZ2CqH1MTLULR0t84yuEIn0yb3T04Yk4=;
        b=rLyDNe2rDf0ntyzH3ulRC0tb9gVibfl+lrzW0Iwg/fQYzmEUsAX8OWLp/Ty/56xikj
         uy1sW07j7tarlAlhVJkHaq1tJpZldkM8fSucp24Pnuhy8wP6PwpVFRUSS+RjRfWNqjND
         66DkI0NvnM863PuAk+mZnyMVLBYZ/5YE/cErFmfBb0tgOMeYGQTtDoVxvtH9pgCIG8tt
         4bJeH9YSkzXe5NDNqC3zi21W8itMCLJuj6w3hbSR+JJ71nAxE5FkSyk1mP0v9EVYCikX
         MTXPFpgcCrQjoPRdCxqO6IvkOxepxQT2yyehqupmsqOczoHgjvHeRkoOV2ivwJlVmUYP
         PEMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6GnknoX2nJueZ2CqH1MTLULR0t84yuEIn0yb3T04Yk4=;
        b=ct0Jm9eL+sbZpwMUNT9XKbsaFMSEGPTWs8Q2S/fyl8LU4D4Xks6NVZylwwscn2qdzr
         0xE6m+/e3LDe0Pgl1LwLwLHE5wFeX3aYy0Sa6ZkWuRS8syfrzjS8QQR1Z3Y/Qwf+7rG4
         KjpUPWBrSX4GtqjxrHMQyIFzNLMg+JjetiOCISNrwm6OiEV5SBuNfjnTrIVcwVc7KVaL
         4pw7TaTJJr/NV02Ns1YTWDCVpfScHPy71+lxf9B65lotd1xrtsZNNduN3tXabqiHhcsS
         Ek2rnxFCbLDiJIrVd+KB0cBWGofWrDInu7JyzWd7xY2TrnzBJNOkKxxIPywMbXjW5cgE
         EwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6GnknoX2nJueZ2CqH1MTLULR0t84yuEIn0yb3T04Yk4=;
        b=C68WIpWZ35N6RHzxDOlp/0aIbEZqm/9VnXT8kzQNTgho+aEU0VjPVO+YMmm8TLB3rz
         nskvgpdszvJ2hCAQL8HKpYJzIcHayAYbvWUV0HVTMPfChhyN9qUjbVKiiZfiAeKZupN6
         xwK3Eh2W+RniStzMc0Mik3HdZPZAUihs0c78k+cevsbn07eUGpsQDMj06cu55rkTtsUd
         bzHXe637vcvj+ZJLKYJTqZEMzOHxihOPG1BfZDGX7MjyhnbxWGb4+rSYRq+RhnqVkoK3
         2zhnVtR7ZAgIA6cuBJtvGW1qBe5aw4MFwUUh/Mkk83p6OLIuCyS9w/A11KOZQrLq9KvK
         NYmA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVWqQz5aUaTbTqSOR6v+unn1JjpDyFNpUys2hbBs2GOoIy9olmY
	vr6KUwJ+R6RMfRj3VtbJTGs=
X-Google-Smtp-Source: APXvYqxajmhjIaMZklvznujaRbtlY3R5av7bTk8zW2kt0jEuBCLxQhOBHuRpeUHWHJpH4l8yuMhb8Q==
X-Received: by 2002:a17:906:ccc2:: with SMTP id ot2mr46897361ejb.194.1582555460043;
        Mon, 24 Feb 2020 06:44:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:177c:: with SMTP id da28ls3186172edb.8.gmail; Mon,
 24 Feb 2020 06:44:19 -0800 (PST)
X-Received: by 2002:aa7:c718:: with SMTP id i24mr46441989edq.195.1582555459444;
        Mon, 24 Feb 2020 06:44:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582555459; cv=none;
        d=google.com; s=arc-20160816;
        b=HSut5XmL0QqVq/0MnhxBkEzBwhSe7m4UpXfUeQqSzUeXRXfJVoank9WUPjG6i6hFXW
         0l0pxY4tEAAE9/sLnzS9MIzmRlUABnatJVAnUyigKuUpOumA5exGdCD3DVJxlKMErUqJ
         c90UMK4tB9JVUgOxjxGvXTSQ4922FYhNdWulOQ/wzY98GE6Syht0PRqqYzbmWrGJBqmJ
         Ct9Ga2RIbEwOjx54lsr+6rc1DIWeoNr0FHBgn+KDYvU8Zbcyf41ZLUqS4Jre/gtHMF2i
         roMnRCHtTqtAhZvsu/wuAES8QkfHKUd/4R2hAGycaPS0OAWmjszoSAK8PvyzEmvjMjI/
         A3Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=9BiQIzqw1g4Lc7fCMo41b2Sms1ZkrHji7czRtN4yRpY=;
        b=yxmSPnyzCbnQQsaPlybSn9LlQkVh2IkuZSJyYm+NXcdb2Lm+FrKP3zBZY29WrtM00U
         BB0zjl4hds/TEvKIbzWRoae+Ls+VBPPB6yBbHO77mQ7Qmi9sHDOLhs+uirFyxoI9bm7P
         8GF5dT6BMcFX+aG0hGAztuBDLyRtxnBLfW3wkHLhcsMv3hoKCMfRzCKPJ6f47gRuc58T
         wogzgZ+gcW83Vk2hPVu2DeMcflwkUduaicGbangJ03k9qwiIG+twDDJkY4j5wv/+bAvz
         HzwQsPRGzfHPvFKH9z888Q4SZEnbQqIOuJusdh+kKNXFt7Bm6CCKiV4/DaI52skM7zim
         jLvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com. [209.85.208.66])
        by gmr-mx.google.com with ESMTPS id z20si770932ejx.1.2020.02.24.06.44.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 06:44:19 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as permitted sender) client-ip=209.85.208.66;
Received: by mail-ed1-f66.google.com with SMTP id r21so12182458edq.0
        for <linux-ntb@googlegroups.com>; Mon, 24 Feb 2020 06:44:19 -0800 (PST)
X-Received: by 2002:a17:906:5604:: with SMTP id f4mr47998768ejq.255.1582555459077;
        Mon, 24 Feb 2020 06:44:19 -0800 (PST)
Received: from pi3 ([194.230.155.125])
        by smtp.googlemail.com with ESMTPSA id a10sm961255edt.50.2020.02.24.06.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 06:44:17 -0800 (PST)
Date: Mon, 24 Feb 2020 15:44:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Jiri Slaby <jirislaby@gmail.com>, Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Vineet Gupta <vgupta@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
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
	Thomas Gleixner <tglx@linutronix.de>,
	alpha <linux-alpha@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	arcml <linux-snps-arc@lists.infradead.org>,
	Parisc List <linux-parisc@vger.kernel.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	Linux-sh list <linux-sh@vger.kernel.org>,
	DRI Development <dri-devel@lists.freedesktop.org>,
	nouveau@lists.freedesktop.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	netdev <netdev@vger.kernel.org>, linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	Linux-Arch <linux-arch@vger.kernel.org>
Subject: Re: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
Message-ID: <20200224144413.GA2054@pi3>
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-10-krzk@kernel.org>
 <518a9023-f802-17b3-fca5-582400bc34ae@gmail.com>
 <20200224124744.GA1949@pi3>
 <CAMuHMdVev0PLF=8bD3nHrhcU9UgM-DAgdQpXi09PgvAxdbt24A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAMuHMdVev0PLF=8bD3nHrhcU9UgM-DAgdQpXi09PgvAxdbt24A@mail.gmail.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.66 as
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

On Mon, Feb 24, 2020 at 01:54:00PM +0100, Geert Uytterhoeven wrote:
> Hi Krzysztof,
>=20
> On Mon, Feb 24, 2020 at 1:47 PM Krzysztof Kozlowski <krzk@kernel.org> wro=
te:
> > On Thu, Feb 20, 2020 at 10:48:33AM +0100, Jiri Slaby wrote:
> > > On 19. 02. 20, 18:50, Krzysztof Kozlowski wrote:
> > > > The ioreadX() helpers have inconsistent interface.  On some archite=
ctures
> > > > void *__iomem address argument is a pointer to const, on some not.
> > > >
> > > > Implementations of ioreadX() do not modify the memory under the add=
ress
> > > > so they can be converted to a "const" version for const-safety and
> > > > consistency among architectures.
> > > >
> > > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > > Acked-by: Kalle Valo <kvalo@codeaurora.org>
> > > > ---
> > > >  drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
> > > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > > >
> > > > diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wir=
eless/ath/ath5k/ahb.c
> > > > index 2c9cec8b53d9..8bd01df369fb 100644
> > > > --- a/drivers/net/wireless/ath/ath5k/ahb.c
> > > > +++ b/drivers/net/wireless/ath/ath5k/ahb.c
> > > > @@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_devi=
ce *pdev)
> > > >
> > > >     if (bcfg->devid >=3D AR5K_SREV_AR2315_R6) {
> > > >             /* Enable WMAC AHB arbitration */
> > > > -           reg =3D ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_C=
TL);
> > > > +           reg =3D ioread32((const void __iomem *) AR5K_AR2315_AHB=
_ARB_CTL);
> > >
> > > While I understand why the parameter of ioread32 should be const, I
> > > don't see a reason for these casts on the users' side. What does it
> > > bring except longer code to read?
> >
> > Because the argument is an int:
> >
> > drivers/net/wireless/ath/ath5k/ahb.c: In function =E2=80=98ath_ahb_prob=
e=E2=80=99:
> > drivers/net/wireless/ath/ath5k/ahb.c:141:18: warning: passing argument =
1 of =E2=80=98ioread32=E2=80=99 makes pointer from integer without a cast [=
-Wint-conversion]
> >    reg =3D ioread32(AR5K_AR2315_AHB_ARB_CTL);
>=20
> That's an argument for keeping the cast to "void __iomem *", not for
> adding the "const", right?

Yes, correct. Maybe I misunderstood the question... The const on the
other hand does not have to be in the cast. It is merely for making it
consistent with interface. It is not required. I also mentioned it in
the cover letter:
"PAtches 5-9 are optional cleanup, without actual impact"

Feel free to ignore this one if it is not worth the effort.

Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20200224144413.GA2054%40pi3.
