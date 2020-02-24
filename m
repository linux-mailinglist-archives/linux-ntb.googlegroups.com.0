Return-Path: <linux-ntb+bncBC6JD5V23ENBB5MLZ7ZAKGQE3UDTJ6Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 32EFF16A65D
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 13:47:50 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id d9sf2336094wrv.21
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 04:47:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582548470; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z701AM1tBPm8XkrZOau9w5UgoV7nSlsfw3B1sWFeU7dOZ0E9EK6ORhI9DHakrfKSuk
         ey5qHxlokj+05WM+GlsvAmA243kup8kUZvGZtUHhJ7kqMFZAhInR0EW7V73fpkYusYnx
         FJ0CUNl3rAMlH+W5TRsQRlyGmxtQpHmKjAN+a9b2zB1s5URdOIr0uiGE7kF8DPNP2n7m
         I6x70MkxnYZTUFWloMfmU3CVbqeVimUdu+dPE9sIrgq8mCBXklNfVGaBFAWKb8qUZtbP
         Im1xs2Ht2rkKboKtBXPxKO7q2vihx+oAdU9YNOhgsVnpvofvKxmZ+8QxRsFXjTf60L9h
         3T8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=cmr7pxUFfFzq1I4xTMt4lSu4YtySLe/NVi17KV0H6T4=;
        b=w7gHF3jR9mqst4U5DsE7NoVQr6uu9jOrhqZgJR2XDDH15v1AZkPwF0bsKOBvXTlcjz
         PPBiu8bi+H9S8YLxhpDRB58g/N2h6qMt9NZioBHrbQ8eScE0CNPgIikXlwlyjLL84bUK
         QYkBm23YN4bSx1/Z+rTVEnsg8MvogvCLtXnnRynDLCzK0mr06g28+4jUvLfD7H+mH5M5
         XCuAdquJILtztq++Wp3ImDKIeZ3IjJvpVTjP+lEeIY/idenyoS0+mtTR9Wp0zyH7W7gf
         Q+q38sp8kbMYbUldUwfbbvzTyubvkJZf2AOvEUqoFDyVJBNc/BcLZOH+mR5neuXwqaMo
         NT5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cmr7pxUFfFzq1I4xTMt4lSu4YtySLe/NVi17KV0H6T4=;
        b=f01E5MiYVFGgmeHmIVGjeLN3ZclaLyOOcufqsOvqXKvYx80LJ6MoWBjveG5MII/QrJ
         QnWoTwtKwux5L8ihPB+/71+B1WJ4DHAVhhHNPvJ8+BQs/fYdrCiD9C4UUCQvDe5xnOjY
         9yd6s0nSPmGrTmdy+571b2vOr7sdO7ry+4pc9T3TjBIOuvpma86Dt/1oncpUIb3BzqTN
         ztRcoAf9gwyoSGVmne1FBxoRZT7voxNazp0sQvY/iZUULAQBZ8AkHgyR0QTCyoDT8QFT
         2Gzkcbo1B4Mx49AqRdcXmWCSFTobzXs8kFd29FLP1rP8ReJ6O48K7xEoCjDEtMk9+b4K
         hVPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cmr7pxUFfFzq1I4xTMt4lSu4YtySLe/NVi17KV0H6T4=;
        b=UVdfOuQ3uWnFLgU3EgciwNbe5hjhwT1a59rs9348JBfZRmLYguwPx73hezTX4kTBE0
         g2hWF0I8vKQ8Z6vRv2/g3SzdAHpg6sIqIQql4NaR/ixXX5VdS5OWi3wPlDX5H411lyT2
         YcWA3Va2b/aXU9ffuHwo58VTWeWW5pI+VCjvsRYmuQ1RnPlk8bTX6ZXHWUAh+nEdZF2h
         LJR+aTfroHm8GoLkuZFElciXD88knO2z2oTmGL8NL76C7nIbW2m+4JCMuHfIuhO66eqf
         KNH/z/0JmUFW/JD9EFM/ciqL1+5BFV026Ep104pIyrfJydhlP8Mcy0WyCi37AT76I1WX
         Ey/A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWFFgo6GFiLlJPIj1FOdgPS9ZvczohhMiGFveotnxOKaQi4hW2L
	PuGikdgxz64NZwlZBOquR2Y=
X-Google-Smtp-Source: APXvYqxV9RjX/lASBH+JQlvVSiYo4aY4/g7rsPfLT+YAv7/C9nbG+S1cX90SK376Al6NRpWOQr9Vzw==
X-Received: by 2002:adf:8294:: with SMTP id 20mr1385396wrc.175.1582548469968;
        Mon, 24 Feb 2020 04:47:49 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a7b:c452:: with SMTP id l18ls4629596wmi.1.canary-gmail; Mon,
 24 Feb 2020 04:47:49 -0800 (PST)
X-Received: by 2002:a1c:541b:: with SMTP id i27mr23550626wmb.137.1582548469380;
        Mon, 24 Feb 2020 04:47:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582548469; cv=none;
        d=google.com; s=arc-20160816;
        b=zAVhBrR1FP4tW266j3GymDDR6AEEL8reyjtb9szQMv2y6wQ3u1tdjXtsS0Qas+l9kI
         yXgrMAOZRftFk1oARpZifst+xtHNtjQyKoh+gxIe37bKzi+0V1+CHaaO7gLLxo8QYbC0
         sAZA3NO2DD8yBZG6Ta96Cne3gkEgyAOFOVq3irhTPnwZZcFEegs0ZsXpfci8nOrQY8y8
         u7M4s0p4WlANAnDpESjcnDaYOqsPlMgUwhXEDwp5wj5J96xDTx4ssG/COz15ugDisSvk
         YlG2awVA3YvXPfiTf3uK44XM9kTqHRbgvYo3pkt2Oi5jDh36maUZX54ivAMlH5YcBxtp
         ANxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=6p1Rm/cgq3FqTcHGA+7QXUNsBMb6waSsaCWakkpOhMI=;
        b=NAWMmNsq92U+F9G0MQQd6nzFIPVAz07T69vh2eC4lLoHbfz7WouPZd5b1wN28WCk3L
         xMaQdxXj+drhXAMlqJg7IPS6i5rD33n3uiwBU9UtTxRQJcIEBjFyufZXJRldJmu5N/SY
         Sy2fXbWgrUMlZsQSsIAM1rpEgh+HHisv7QbGtw5vS+02V8qFijnFc1a5mxYIsgPtdgTJ
         SBI9aTTUnZJRBnpiIhnkxOy3ZDPEeI/eVa8vNC+6OuEfXh1gHhnyd/3n2Lw+tCNRMSpd
         lA6A2/aOmow2nFTxIqiNojMozJMnkIYEeuYLAJhCc4v01eeLCzYY3hpjHwMz+0DIdspp
         h7Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com. [209.85.208.68])
        by gmr-mx.google.com with ESMTPS id i18si830392wrn.0.2020.02.24.04.47.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 04:47:49 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as permitted sender) client-ip=209.85.208.68;
Received: by mail-ed1-f68.google.com with SMTP id m13so11742674edb.6
        for <linux-ntb@googlegroups.com>; Mon, 24 Feb 2020 04:47:49 -0800 (PST)
X-Received: by 2002:a17:906:7fd0:: with SMTP id r16mr45290488ejs.319.1582548468870;
        Mon, 24 Feb 2020 04:47:48 -0800 (PST)
Received: from pi3 ([194.230.155.125])
        by smtp.googlemail.com with ESMTPSA id n19sm944550edy.9.2020.02.24.04.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 04:47:48 -0800 (PST)
Date: Mon, 24 Feb 2020 13:47:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jiri Slaby <jirislaby@gmail.com>
Cc: Richard Henderson <rth@twiddle.net>,
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
	Thomas Gleixner <tglx@linutronix.de>, linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-snps-arc@lists.infradead.org,
	linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org, linux-media@vger.kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Subject: Re: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
Message-ID: <20200224124744.GA1949@pi3>
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-10-krzk@kernel.org>
 <518a9023-f802-17b3-fca5-582400bc34ae@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <518a9023-f802-17b3-fca5-582400bc34ae@gmail.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as
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

On Thu, Feb 20, 2020 at 10:48:33AM +0100, Jiri Slaby wrote:
> On 19. 02. 20, 18:50, Krzysztof Kozlowski wrote:
> > The ioreadX() helpers have inconsistent interface.  On some architectur=
es
> > void *__iomem address argument is a pointer to const, on some not.
> >=20
> > Implementations of ioreadX() do not modify the memory under the address
> > so they can be converted to a "const" version for const-safety and
> > consistency among architectures.
> >=20
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > Acked-by: Kalle Valo <kvalo@codeaurora.org>
> > ---
> >  drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wireles=
s/ath/ath5k/ahb.c
> > index 2c9cec8b53d9..8bd01df369fb 100644
> > --- a/drivers/net/wireless/ath/ath5k/ahb.c
> > +++ b/drivers/net/wireless/ath/ath5k/ahb.c
> > @@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_device *=
pdev)
> > =20
> >  	if (bcfg->devid >=3D AR5K_SREV_AR2315_R6) {
> >  		/* Enable WMAC AHB arbitration */
> > -		reg =3D ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
> > +		reg =3D ioread32((const void __iomem *) AR5K_AR2315_AHB_ARB_CTL);
>=20
> While I understand why the parameter of ioread32 should be const, I
> don't see a reason for these casts on the users' side. What does it
> bring except longer code to read?

Because the argument is an int:

drivers/net/wireless/ath/ath5k/ahb.c: In function =E2=80=98ath_ahb_probe=E2=
=80=99:
drivers/net/wireless/ath/ath5k/ahb.c:141:18: warning: passing argument 1 of=
 =E2=80=98ioread32=E2=80=99 makes pointer from integer without a cast [-Win=
t-conversion]
   reg =3D ioread32(AR5K_AR2315_AHB_ARB_CTL);

Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20200224124744.GA1949%40pi3.
