Return-Path: <linux-ntb+bncBDXO746SYYBRB2X46T4QKGQEM5GTOBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E99224A241
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 16:59:56 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id h36sf10718004pgl.14
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 07:59:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597849195; cv=pass;
        d=google.com; s=arc-20160816;
        b=AHia+up8dN6v9wwTCcDvskoNNLYXRU8TqZDMOVH0goL+wwpmbmKg2S/BSNmJPo/YVu
         mkSICoxy0mqyphnba24MGi+X1Z6/OR8yNpbs70Zm07/Wz4PJy+8EL3VEoZ5Tea42Bjd1
         YbBVPF9Gs0AxdymrXZJBXjXCpGHJ7XsVSOQQkXjPZrPuW9SKZh2R3GEnVZ9wwophm+py
         6pxwIf026kyOWd3lV870DTUoozU6zZhaUIVrg3/kpZxlRxFpbasq2RaZQAIhm8e2nBqc
         eN2guGEZx2oN2AXtfBs+jLCdU6fE6yyFGyj5kUGfmOMHTrwY/kyj1+MX+T1bi4SRfR8x
         Fxgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=Zscxbv63VLkESefogiLVig6bUjLsyx8U+53U3PAWGVc=;
        b=aX+OhIcuph1bJBbP3jpTvP/+1e9IgopKP6y891gE8F81p7EeqSpFz/7wqPmmdZjjxL
         cik8meW4W8Uvj+mi0MovNFVMsnmKKZi+yhZ+Yj4Z8Bpg5rkDFHXj9uzTzVRkJw0mxcQS
         TmGhQ+BxO/9v0Vgh7XJQw+mq8vDVb6W9xrAwKvQX0D0PWnoNYgQq0baBHlBy2iyA6aue
         7e+q0xmf1qYlCnXIwjy1Xt443gkmee8ZMRRTfNRghEObBix5suwIg389wG4AlCsvtLId
         e9jIVR+Um8DCz+w3JgbIobZ5EKt0LrtkvRql3LL/ADJrF/VKGyyhPQctnZJOEFyv6fF6
         n+Ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=OjUAwUTp;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=OjUAwUTp;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zscxbv63VLkESefogiLVig6bUjLsyx8U+53U3PAWGVc=;
        b=sRFVbfYmvJdfw++8vVNBOcHlJB+4NHxz0dF2xxaf2azzfG/7yXkyopWkSGadck3jPh
         Cj9lGC51QfN4x19MiYJo2K2MYKnOWYHbkNx8ooFGxLVDjIc5azJ7QztS/14evJd8VwJI
         9AcXIJOTAINUpzx3S0id8NV3OeQ9XGPWBYSHy001Y0wTQkrWEPwUEU5AnPsGl7hwn+cD
         XOrIHNFYoOhC+DPqecg8LRX5KsMu/pErKicwUgYmKJJmzeOqs0ARUKMwLh+tLmgtun3k
         /VZRs9Z/1Bk2TkwRRbf/sBPtDYh08O1jtBBtyk9/BwZSr9EgmrbTi5QlnkXO/VABKN7E
         izJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Zscxbv63VLkESefogiLVig6bUjLsyx8U+53U3PAWGVc=;
        b=cguxMBJlSJAu8iXDNf+LSMszDt4V3balz9qQAn8D+e9gZ1M3U5vlsWDC64RCRS4Qz3
         D1VFmdi46GQGcPW2OhnO+RGH88fxZl5pHGDnhBCf2hDG2eYoDtaUFuwrHRH8qvAbRjYq
         oy6rdUZ0DJZ3tkujRFSIkxSZTqoJyHmc0AEd4IZuPRt/DC4EMM1KymizlCiDJ7KGU3/R
         ZFUA5Dh9SS3UU98akW2SxRg4S7MHMVqf1H3GzKHBT+BBRQ8RPUGuMe3457ej6YD7wRW5
         TK+eUgNXHJfGlEFOP6Ciwooy2Ro9zBRbN0J7eSwis8zHVK3OwgX1odizKmm0io5rcxpy
         OYUg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533mnoCM3OinyZ1HwoDaW8Zq7hnNdDfyRdM31S4H3BdiZNYFt6lw
	I0fvW/xe6q2C9doy7rg/fMI=
X-Google-Smtp-Source: ABdhPJyheLpdRolICFqW+IONNn4qFuLrcz70hj70gyd91hnwzREHvT8X+KsGdK0YIZdrG8njZH+CaA==
X-Received: by 2002:a17:902:868b:: with SMTP id g11mr19904292plo.9.1597849194929;
        Wed, 19 Aug 2020 07:59:54 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:ab10:: with SMTP id p16ls8486936pff.3.gmail; Wed, 19 Aug
 2020 07:59:54 -0700 (PDT)
X-Received: by 2002:a62:3857:: with SMTP id f84mr19418921pfa.303.1597849194487;
        Wed, 19 Aug 2020 07:59:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597849194; cv=none;
        d=google.com; s=arc-20160816;
        b=CqMeG0YQGk6fLK3sqbWCO5Lq4JFTStzd6u1uogBoQ4UxOh413XZ5oWr8wHcCVx0i51
         9X6tewpqFgNupAiVMv54jTO5Trc3FFyao2LJMjhipucR3oTl7JeyifFNjQnrfaHmgKMt
         IFfiZSdHU38jN914w4LyBhpZiPCaV7UisQMv8eUSWiWD0A/cb7VgKRqA5HQJ9Ra9+7UG
         FWHqiYI6Ow0MPZ7xypIxG5kprZ7UlrfQG39RD+mTOTttFSYsf3VB2Hd7dzzokggilRCe
         sa2ith7WefvsSlF6KgQrtBywk9WLLiM+jxzmkMFTFvxXElMSILS/0XrTXAbAknwAjQI0
         6vpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature:dkim-signature;
        bh=kQcO2LQaX3eQIWobyRoXKgRErtQkUzKBQnAQ4hIuODk=;
        b=JXHbjm83pJM1fFhe+kawppWI7UgJunLkBLGcPTaqx78j3SZ2VzpsEviaGKVKXV+ibX
         /xG/DSv84iA0EXwH6zpTc6//ZUr6NeJg/fZ40dAy0SEfCo61LklL6a5LNKvpnwb+FVPP
         DWGxqL2HgGUmJaYusMYHlSAFHpNzi+rr7nWurKzxC0S0+zX4j2qU8DeiCQ8gHUUQKUWq
         RjOnmNR1V+fxfDyLYChjglbOm9c3Lg/DeNT2zeQW/DS019M6Z53CgMf3Hi2XO01FZZNh
         GLGH+7OgD7HMd0ZR3za2WzZR4RmFwsb2g7QZqR9qf2IF9VzCkBEqNKwyNd+cJFn8WEiF
         z/CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=OjUAwUTp;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=OjUAwUTp;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [66.63.167.143])
        by gmr-mx.google.com with ESMTPS id bx1si304830pjb.1.2020.08.19.07.59.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Aug 2020 07:59:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) client-ip=66.63.167.143;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id D115F8EE17F;
	Wed, 19 Aug 2020 07:59:49 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XOU0COqUWmkB; Wed, 19 Aug 2020 07:59:49 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net [73.35.198.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 6C2C88EE0E9;
	Wed, 19 Aug 2020 07:59:47 -0700 (PDT)
Message-ID: <1597849185.3875.7.camel@HansenPartnership.com>
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
Date: Wed, 19 Aug 2020 07:59:45 -0700
In-Reply-To: <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
	 <20200817091617.28119-2-allen.cryptic@gmail.com>
	 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
	 <202008171228.29E6B3BB@keescook>
	 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
	 <202008171246.80287CDCA@keescook>
	 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
	 <1597780833.3978.3.camel@HansenPartnership.com>
	 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=OjUAwUTp;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=OjUAwUTp;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
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

On Wed, 2020-08-19 at 07:00 -0600, Jens Axboe wrote:
> On 8/18/20 1:00 PM, James Bottomley wrote:
[...]
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> > 
> > #define cast_out(ptr, container, member) \
> > 	container_of(ptr, typeof(*container), member)
> > 
> > It does what you want, the argument order is the same as
> > container_of with the only difference being you name the containing
> > structure instead of having to specify its type.
> 
> Not to incessantly bike shed on the naming, but I don't like
> cast_out, it's not very descriptive. And it has connotations of
> getting rid of something, which isn't really true.

Um, I thought it was exactly descriptive: you're casting to the outer
container.  I thought about following the C++ dynamic casting style, so
out_cast(), but that seemed a bit pejorative.  What about outer_cast()?

> FWIW, I like the from_ part of the original naming, as it has some
> clues as to what is being done here. Why not just from_container()?
> That should immediately tell people what it does without having to
> look up the implementation, even before this becomes a part of the
> accepted coding norm.

I'm not opposed to container_from() but it seems a little less
descriptive than outer_cast() but I don't really care.  I always have
to look up container_of() when I'm using it so this would just be
another macro of that type ...

James

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1597849185.3875.7.camel%40HansenPartnership.com.
