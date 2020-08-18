Return-Path: <linux-ntb+bncBDXO746SYYBRB2PG6D4QKGQEYJISGTI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C8285248F3D
	for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 22:00:42 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id r18sf9620365otq.6
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597780841; cv=pass;
        d=google.com; s=arc-20160816;
        b=0jxgGkilC595hp703CuTO7wPviZ8pDl7yVZh1FXrYtQvsa5+9fYp4MKczSdSTC/Txg
         BShzyC/Q7hkUpjY38ZecYJkjLQoIrFLpMt/lsbW/8krFuYvRQTuzO/h+Xmveo+LhjkUr
         Yo1Ulv9j/RLPpCLw/XYWO4Ci97nGQ+uS3+FS6v7PwK0Dg04Lv4coN2sw+eJLhPBuqgGs
         ynKBKZzryxACKzA/il/SdMlPcsPXe8T8986Hve7AeKanVkPT7h4eCmokUvRYtQowdPo6
         rDf8ZkT0QfEeXwovaJKmf0auGro6D9hAAzjTyusmo9sjAWEAwh8ANJcF9HO6tt0hXQ/J
         7V7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=2zDpKC834hKf25NXncZ4+t/4Bof4sgQJHFGOKPj0UgI=;
        b=Q//YC8ZHsRMXG+gFBdOel3SSwvEZVuJpBTR+5m8ZCft6T5omXYGiW2owPDNYHoctSD
         qsi7xISRncZB56mNCQCN6DjNkCM2RxdHqJDC1cp/aL5oBh1tC4USkaM9ZBRdC1MXgPcj
         ukfkilOAIMwNHDi2mxhuPZQuhewFdQCvWs36VyiribYasAEwqtvyofA9Dw1tx2tWrnC5
         vwdis6qb4ApGlr63BHSr8y/K6Qa5P5C+JKc8cJ1cNEuHliUGb5hBf+FDx3RZ4KWUVl8o
         9Vbf5CUR5Mn05Weag8ZxHkVmKQYD7dFQHYYRmcUB4yLRSVFpph3arlIq1GrqPiKSTwVU
         nsZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QbgQa4sN;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QbgQa4sN;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2zDpKC834hKf25NXncZ4+t/4Bof4sgQJHFGOKPj0UgI=;
        b=AxL7+mR0vOsnjg3IFcffa6E04X1RNpVNRxbe2TOncnTA6lI6lsOE9RQ4duL7NptARI
         +LM2L9AhCfblx6dhspa9+KYzEZ8AHVKth+Fun/fD0EJvp4bZlTdAcTw6789MMMATtD8U
         6Sa01+aaiB7Bapg0J/j9uzOBG+TGeJannf9N4oR1su7il1QCzFR2V7gGyZE4FAdJ3FrN
         rlFBI5qv3jwtq9cgkirun8Dq7genOXYRSbMi43uP8QrPg7yFlUcH1om2v0ksovEXQwM1
         vFVyLYBN3g+ciwBlwSNhx1q57C1xK7/ZpnZvi0xQF5buN6woyxVtz3EkrhQdkZuTbxKi
         I2rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2zDpKC834hKf25NXncZ4+t/4Bof4sgQJHFGOKPj0UgI=;
        b=Qo/Z2AKbLzRZNvILTmghjtL0SK89MdSLQnCaLTlyqK8l08uJ5Xjryy9QNACJR9bBHo
         4qsPyQ1JQuDiwS7qpwWdpbOt6Le1ZfAzYmcXnP38g4vy0nXkYzYKts9nJaBxZlz2ULqZ
         1As+XtPWHuJzPSoiQKzOqx4fSwdddi0mxXsYVphYQKr8zY+ZmWEQJBIVi/aPeb1j+uMV
         JGYzGlelCStyoLCbR17dhXkNywEo/103nceQuzOF5ZCQAGyQcO0Ey9BkjhED+s9Al9hX
         unV8LNjwI/Okyqs7LGwJc4nLQYNFjJpj8XWQcefJOjTz1GSp4iBvy+VCzgd2iYSpWa7e
         2phA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533P+657Fn2Ofv0WZtvlj7vZXSfwo4OoMc7KwHlf0C5ddU6ZFduy
	dU8WwvR3T7JYarlLC7//2bo=
X-Google-Smtp-Source: ABdhPJy7DlWFEri5RxfKkXbvqimeal/XdC4OzOoMxFOpVzOHYnX23ylGhtpM21Fr2lqNXTww/fd52A==
X-Received: by 2002:a9d:6b0e:: with SMTP id g14mr16487475otp.171.1597780841598;
        Tue, 18 Aug 2020 13:00:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:2103:: with SMTP id i3ls4718095otc.3.gmail; Tue, 18
 Aug 2020 13:00:41 -0700 (PDT)
X-Received: by 2002:a9d:f2a:: with SMTP id 39mr16560487ott.119.1597780841185;
        Tue, 18 Aug 2020 13:00:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597780841; cv=none;
        d=google.com; s=arc-20160816;
        b=t1OC9zXc40yUPFahxIV/hxVgqLPeV8saz02Kmb2I8pWN/fPVOFq6LHns9JezbGYBtX
         WN1bxV+w8qHAVuP9yZXBPXD0bEPA9kQeruZj9JZYo6nIxQgRmQ7tNsO/R2IowB9u+AKe
         XkmDibg5v+WUgjja62NonHpvMGLKliZEvR/GYQ0PQnUZJGXNgG6ziSl9AO0aaMXpqQTL
         lwSCI3Dz2J0U4kWTESAn6Df5qlQF2ClUsBsvo6qAqHzXDYHNDJi9UV91Lq1SkmypxWBi
         nmGgeKQQ6r8L5q1oyeLHr7zQQUMhMBVAyqmf/VtkfaW4td+iKocFbvBLl51IOUhDfeZP
         XAww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature:dkim-signature;
        bh=Ez42PC4VVF2cC+ogoTi67GlSgixiGQo/+okH5ctaru8=;
        b=xYCpWRzUfr4Ffj5bJlOHbB1ZGDo9sHpNTRxPJRoaZDoq80CYRWpdM8MXU4AuXZ93R9
         1zqTbaASqHwk0gC2/bRykn7FfbnJFR5Fy1DmDEA7/ScPA6Orj4z1zIhHd4iMmLT62bAd
         othlSZbPA50bPLBbbWrucOV7tbKfXXumeATM2+zflYlvCc3lWjNbGEMnsWp+OZAvr3Xx
         xo0GFeP54OmM3z+DcqeHaY1qM6h2AYKfXZ3qgqPsbkH0GrAbykjSaG1eaEs8aallmf9R
         aD87Uo7mHSgupLsj9Y2R4BQajq7fpTzX/0PsHztwh9coOHGhIBscVV5QZ2aqxYRioDFL
         GKaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QbgQa4sN;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=QbgQa4sN;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [66.63.167.143])
        by gmr-mx.google.com with ESMTPS id c5si10187ots.0.2020.08.18.13.00.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 18 Aug 2020 13:00:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) client-ip=66.63.167.143;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id B7B338EE183;
	Tue, 18 Aug 2020 13:00:37 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OhVM_virpzc7; Tue, 18 Aug 2020 13:00:37 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net [73.35.198.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 49AB78EE17F;
	Tue, 18 Aug 2020 13:00:35 -0700 (PDT)
Message-ID: <1597780833.3978.3.camel@HansenPartnership.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Jens Axboe <axboe@kernel.dk>, Kees Cook <keescook@chromium.org>
Cc: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
  anton.ivanov@cambridgegreys.com, 3chas3@gmail.com,
 stefanr@s5r6.in-berlin.de,  airlied@linux.ie, daniel@ffwll.ch,
 sre@kernel.org, kys@microsoft.com, deller@gmx.de, 
 dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org, 
 s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com, 
 ulf.hansson@linaro.org, mporter@kernel.crashing.org, alex.bou9@gmail.com, 
 broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com,  davem@davemloft.net, kuba@kernel.org,
 linux-um@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net,  netdev@vger.kernel.org,
 linux-block@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, 
 linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org, 
 linux-parisc@vger.kernel.org, linux-input@vger.kernel.org, 
 linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com, 
 linux-s390@vger.kernel.org, linux-spi@vger.kernel.org, 
 devel@driverdev.osuosl.org, Allen Pais <allen.lkml@gmail.com>, Romain
 Perier <romain.perier@gmail.com>
Date: Tue, 18 Aug 2020 13:00:33 -0700
In-Reply-To: <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
	 <20200817091617.28119-2-allen.cryptic@gmail.com>
	 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
	 <202008171228.29E6B3BB@keescook>
	 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
	 <202008171246.80287CDCA@keescook>
	 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=QbgQa4sN;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=QbgQa4sN;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> On 8/17/20 12:48 PM, Kees Cook wrote:
> > On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> > > On 8/17/20 12:29 PM, Kees Cook wrote:
> > > > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> > > > > On 8/17/20 2:15 AM, Allen Pais wrote:
> > > > > > From: Allen Pais <allen.lkml@gmail.com>
> > > > > > 
> > > > > > In preparation for unconditionally passing the
> > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > and from_tasklet() to pass the tasklet pointer explicitly.
> > > > > 
> > > > > Who came up with the idea to add a macro 'from_tasklet' that
> > > > > is just container_of? container_of in the code would be
> > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > from_tasklet is doing.
> > > > > 
> > > > > I'd fix that up now before everything else goes in...
> > > > 
> > > > As I mentioned in the other thread, I think this makes things
> > > > much more readable. It's the same thing that the timer_struct
> > > > conversion did (added a container_of wrapper) to avoid the
> > > > ever-repeating use of typeof(), long lines, etc.
> > > 
> > > But then it should use a generic name, instead of each sub-system 
> > > using some random name that makes people look up exactly what it
> > > does. I'm not huge fan of the container_of() redundancy, but
> > > adding private variants of this doesn't seem like the best way
> > > forward. Let's have a generic helper that does this, and use it
> > > everywhere.
> > 
> > I'm open to suggestions, but as things stand, these kinds of
> > treewide
> 
> On naming? Implementation is just as it stands, from_tasklet() is
> totally generic which is why I objected to it. from_member()? Not
> great with naming... But I can see this going further and then we'll
> suddenly have tons of these. It's not good for readability.

Since both threads seem to have petered out, let me suggest in
kernel.h:

#define cast_out(ptr, container, member) \
	container_of(ptr, typeof(*container), member)

It does what you want, the argument order is the same as container_of
with the only difference being you name the containing structure
instead of having to specify its type.

James

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1597780833.3978.3.camel%40HansenPartnership.com.
