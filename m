Return-Path: <linux-ntb+bncBCFYTA5O7QNRBM4AS75AKGQENTLD5FQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id EA536252549
	for <lists+linux-ntb@lfdr.de>; Wed, 26 Aug 2020 03:51:47 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id p23sf113491wmc.2
        for <lists+linux-ntb@lfdr.de>; Tue, 25 Aug 2020 18:51:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598406707; cv=pass;
        d=google.com; s=arc-20160816;
        b=TeccHDJ2u6KI2+vvdXSeW64+P75nJzQLAb3QccFyT9wc4vaSfnaLZ4CSPtLY61BEUX
         b4igiYYX9XlnINGyCeo4QNriB+14re353LcBB1amNtyr23qqefpbZnk/j2N4bMVuxpPa
         TVAx0Y/1XRqqAiwQnR+QZeeJPL3EAB7Q9zbzQGye5gJyM6KsgthGxqg4T56vv1OybCru
         VHuSQymByrbKxFCHhDDy2jhNeC/FHyTbz57nQDTMGCinKeyhPVH8JHvlWSHEUMUtodK/
         UI6Aj3uGbhTGvyPzUJXo4w8FIQLZvHuxjJuPGfxvglrQRWo39L3i3vxqXg7aX+Hk2Z14
         U54w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=+II21ZRylv1MGaESpdmiX71P5TCUu5wf3DtlZ+OHfqM=;
        b=UyVY63CXa59ygrOJLIOaa2ltf0imUMtC6+iPN0FttSRWpO58ud/TGUurYZHmKvHd/v
         mKtRWIoiJf4iCISnhZhS2iiEOuTLh7U71QjPBwYZscYRCBjPRF3HTzafNe2zP+jLcR9E
         FTJ6Khn+HRgITZg3x1TCbvO8mPW7PQyHRN6FRZS/SSw7gW7NBkICSFp5b8iMHvur/BpR
         KXVcotNbF03pDg6SmMhmhnnnr0uwXd2k2z0u3aAmDM8BseCqcCwescqXpV3B592ksM6H
         Bk5BOnEipy8nUrjjrenIF04Um7Eh7PPDm2cEa0cZO9lJO6A9W4K8YSCPFxFWXqyBwVLU
         8eAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rkPU8zA6;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+II21ZRylv1MGaESpdmiX71P5TCUu5wf3DtlZ+OHfqM=;
        b=Q9KDTQ0Xalhph4fnrZbg1wqAjqyehCZ7N7U4RqVaDdN2kxSMhtRnhu6unMxRWIo8c/
         OfCXsA3p3qzIWWSvpVpxLIg1hPWijMABm80RDTClKFH38ia/0BZUtsFkIDw+VZsDYAi/
         ykcWqa++WgvDqoetddyVUldtSXqqS98siyaG9VWckJW3kOtE80rQmz3jwWvHVLaOm+08
         mO9AwlZXICrTsD2DzHzY5lCsTv3PussW2+B2/frl6ykMcG2bZblGh6Cf5SNhXL25YtSC
         92NcKY4nyntNf9aN9RgG6TbHPTraZx3+f8nLZOV5+cLeEaC3ZUc0htJhdw9C8QAwBYRc
         GOAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+II21ZRylv1MGaESpdmiX71P5TCUu5wf3DtlZ+OHfqM=;
        b=hea7NZWYalu1nqE1sdvj2i+n4G/guJbxc/xLI+585N0fVz0bKaUA2ZBCp3E/HrepNt
         guAxTZw5wRAmQAZFKdJ2oXb8QXtuKBCiXtp6/HrCn7ZyFQmOfk+P+cmmqxaHXDoGkrvO
         QR4TMq9vqH91SoqMc4quS0IeiIxONb7ECJlxir3QmuiEFsKZyit8x9pv4lxQXiQnB1n0
         Iu0Oi6YVzxBrAJ9K0qaW0FBhdwqeSMYqhDav/e3N7+0aYxNkjR4sg3L3i4wpOeI2qhhG
         NYFb9XlEm1eqWOcGMRB+V6FFv8D9MQctpGL2EdSMd95w0BzxA3Xa2uHucPZ4degU8JjW
         6LtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+II21ZRylv1MGaESpdmiX71P5TCUu5wf3DtlZ+OHfqM=;
        b=UCJJ7XgMYk1JIL7YG9GgmA69kI0Yj5aRJ+gG2OvkgJ0ilembvjQu+xacDyDWBpqput
         KPHw9UmDa85XXQGUbQZH6xoNkrnsANXm9MNUxzr9H5SJl+c6x0WiTUte0J34g0Ow3Jt0
         eNfZb439ZtCzbpvGbutlC9uobDsozzDja1oIL4ea8yH4QvbzUa2EiVMnFbzkHq3L8CgH
         XuDsB/g9H2rHl8atjT/E77k+Wz2o+ixm/ff+Autls6svsV4G8SDfzd0kWPoOiOzbQsMr
         tiKm8BYDL3fdLt9Ny/3xH7JcDVRLG8R6HrveN0iml0zWlEWXzQlm+pGJRYgXOelmnUS6
         5dWA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533pVELQ5X8MBxcYi2skXhIaVgk1JXyUGknCdqACjx7NSXx/nWwK
	gVIfVLlAq7hW6QnpvlOKd7Y=
X-Google-Smtp-Source: ABdhPJy21gR7gjNSOup6lPNtid8WOwuM1CTFj9Fmax9Aff33wNClfnT+1GqdpimnbwNDzy+xzhczRw==
X-Received: by 2002:adf:edca:: with SMTP id v10mr10398708wro.124.1598406707679;
        Tue, 25 Aug 2020 18:51:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:287:: with SMTP id 7ls186320wmk.3.gmail; Tue, 25
 Aug 2020 18:51:47 -0700 (PDT)
X-Received: by 2002:a1c:544f:: with SMTP id p15mr4687598wmi.147.1598406707103;
        Tue, 25 Aug 2020 18:51:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598406707; cv=none;
        d=google.com; s=arc-20160816;
        b=gRZzURmISGL3/jigEmK/BBLaN3bFTE6TJTQzL/6w0lFBjvUlZfKJdtlvn6fm0eHrQ/
         9MtYhbJrvj4t0qiud3rPH6+4vrhxMA9sFhS3nSq5bkP/dT1eQYhS8d9c3kWMDFoHf0OV
         9M6kea4h4p0CzAH9mgYJewJd0hJV1oxcrbNJtchtbBcvkV2hubjPjVLFYoNIA+c14JDM
         qUJWbwWOGBkeo8p+xcaQ4iorRDyQgJiayhMwpElVq0VJHz3yHJ3cr2FM0Mz3uos6reKD
         RGVCp5gtKLdgEJXclxtdaf5XGH9yuFf08spGqYoNUKpcASzn7PgfqzuPaARtDlXii3aY
         XXiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6lKBXswTrzhA0xBsr6HB8AlB5+bACM8/QHtln5EsmDM=;
        b=QT2TVQTpnDoVBuMKtaCn4/1Jw0e1XRTx/kwsibZncWetD6FI6gcsw9w9ubzF31KmOn
         isfa+GbVka0TTTpDLhAj4twTfK63Uiu6n36Zm0vLlZvK5QCoPM391bjME7aH4k+cHGnD
         ObXBwDncqzPd7X5YOLAvj8c2PbpqRECEKZl0cQqg+aSVQ+sqpmNuHG7xk+9RxJXHuobT
         4XHGNNQNo9kK4nwgzWIZal1MwcSJJNaxmEz1Iqd80pQLtruPQJ4Om+C4CKaAnPU29bre
         cXqGRNS2hWKNioXoubuPCipt9WNixT2448Lemfy34pjkTX7i0InYQ3sGMeo6x7MrIQwR
         WOdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rkPU8zA6;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id w127si38607wmg.1.2020.08.25.18.51.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2020 18:51:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id q14so154071wrn.9
        for <linux-ntb@googlegroups.com>; Tue, 25 Aug 2020 18:51:47 -0700 (PDT)
X-Received: by 2002:adf:db43:: with SMTP id f3mr14164955wrj.219.1598406706678;
 Tue, 25 Aug 2020 18:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com> <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook> <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook> <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com> <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com> <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
In-Reply-To: <1597873172.4030.2.camel@HansenPartnership.com>
From: Allen Pais <allen.cryptic@gmail.com>
Date: Wed, 26 Aug 2020 07:21:35 +0530
Message-ID: <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Allen <allen.lkml@gmail.com>, Jens Axboe <axboe@kernel.dk>, 
	Kees Cook <keescook@chromium.org>, jdike@addtoit.com, richard@nod.at, 
	anton.ivanov@cambridgegreys.com, 3chas3@gmail.com, stefanr@s5r6.in-berlin.de, 
	airlied@linux.ie, Daniel Vetter <daniel@ffwll.ch>, sre@kernel.org, kys@microsoft.com, 
	deller@gmx.de, dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, maximlevitsky@gmail.com, 
	oakad@yahoo.com, Ulf Hansson <ulf.hansson@linaro.org>, mporter@kernel.crashing.org, 
	alex.bou9@gmail.com, broonie@kernel.org, martyn@welchs.me.uk, 
	manohar.vanga@gmail.com, mitch@sfgoth.com, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, linux-um@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-atm-general@lists.sourceforge.net, 
	netdev@vger.kernel.org, linux-block@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	openipmi-developer@lists.sourceforge.net, 
	linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org, 
	linux-parisc@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com, 
	linux-s390@vger.kernel.org, linux-spi@vger.kernel.org, 
	devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rkPU8zA6;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > [...]
> > > > > Since both threads seem to have petered out, let me suggest in
> > > > > kernel.h:
> > > > >
> > > > > #define cast_out(ptr, container, member) \
> > > > >     container_of(ptr, typeof(*container), member)
> > > > >
> > > > > It does what you want, the argument order is the same as
> > > > > container_of with the only difference being you name the
> > > > > containing structure instead of having to specify its type.
> > > >
> > > > Not to incessantly bike shed on the naming, but I don't like
> > > > cast_out, it's not very descriptive. And it has connotations of
> > > > getting rid of something, which isn't really true.
> > >
> > > Um, I thought it was exactly descriptive: you're casting to the
> > > outer container.  I thought about following the C++ dynamic casting
> > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > outer_cast()?
> > >
> > > > FWIW, I like the from_ part of the original naming, as it has
> > > > some clues as to what is being done here. Why not just
> > > > from_container()? That should immediately tell people what it
> > > > does without having to look up the implementation, even before
> > > > this becomes a part of the accepted coding norm.
> > >
> > > I'm not opposed to container_from() but it seems a little less
> > > descriptive than outer_cast() but I don't really care.  I always
> > > have to look up container_of() when I'm using it so this would just
> > > be another macro of that type ...
> > >
> >
> >  So far we have a few which have been suggested as replacement
> > for from_tasklet()
> >
> > - out_cast() or outer_cast()
> > - from_member().
> > - container_from() or from_container()
> >
> > from_container() sounds fine, would trimming it a bit work? like
> > from_cont().
>
> I'm fine with container_from().  It's the same form as container_of()
> and I think we need urgent agreement to not stall everything else so
> the most innocuous name is likely to get the widest acceptance.

Kees,

  Will you be  sending the newly proposed API to Linus? I have V2
which uses container_from()
ready to be sent out.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAEogwTCH8qqjAnSpT0GDn%2BNuAps8dNbfcPVQ9h8kfOWNbzrD0w%40mail.gmail.com.
