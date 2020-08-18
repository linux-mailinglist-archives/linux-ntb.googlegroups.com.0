Return-Path: <linux-ntb+bncBCF5XGNWYQBRBKXL6D4QKGQEQIOD2SY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BDC248F67
	for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 22:10:20 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id v10sf12856654plp.5
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 13:10:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597781418; cv=pass;
        d=google.com; s=arc-20160816;
        b=v3eMSK+5uSXA4ROF7Rzc9fmd5ysOsNGqxVId8wYGv+S8wG1IvfTyhK1RGeFPRjUCOO
         ciSYv0qPmA6ozBDbUslbxzE/3y3ln8iGlXeCb4IR+Cc8d/msptQMW3rHhhn1BY5ztxcF
         fpWEtBayhDajsqPzjIvfyIs9fiOwQ6ocgAW5qcSDZugQkItsGX7aM9gB93znCEu7LKZ1
         gGwfL++edHworyUOWn2XDnSzzwTGAm+HLKfWTw3irsonYu5Vv4/hXw/encURF7TLAsRx
         Fxn5CKWzuYWEf64lBsFOaj0AYqmzgiieMZqtWP1oG2wX5wFZ+f6uo2jq9bJG/bivWRCD
         xLxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pkBFtdG2gh4I+6zKJ/1ja48OTVaE1q2/1rHT6le0T2M=;
        b=W7zgKIFzoxERKY3Y5ZcDYEMbdKu3v89Hf19uwN7gHAHzsxvQ1VtgOOWkdxWK1HWxK0
         VvQcTDMYEyKpt3BCVCTLvzyjpq7g53dwc5G+BKqyIgeI3Uu8ajn4+fI3EI97Xc5v+mpQ
         /4N4ml5Jol6Y/m+eUp4bBJFdj4GwajPaIsXMY62R/VS9srxzg5mcSqGPIBy1+8Bv4XkE
         PlJABjg4xMqli1TeSIQVu/LgI74Cs1WV2LJdmNgffICoKM+aZow6Dg+G9JfZl4qKVbX6
         ch9ftry17KwbDq7KqjyuHc93xeFHYrXsgy9oKVMCjZW36tIfIm/lT24ASMTsMEf3iKzX
         W3yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XJIRNe3G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pkBFtdG2gh4I+6zKJ/1ja48OTVaE1q2/1rHT6le0T2M=;
        b=nYkEWzU3vJtHap2Y4yP8PReBU0hU6ckpGZOA0XWiBmJylRr0Zqtr4ittKtuBT17v9v
         lb2CreHAHuvUWzGOsNk3/CR5fp9FUKf1dyd3IbaTl+/Gt6M+DkTV+Co4PRICizycBz2U
         NFJlqyfH1u9iswsN5IeTupLgli6cW9K5Dpun3nscvdGNysDH9JnI2JFtlwoQQABXjuJB
         EGZN2Q3HgzJK56mNDY1LrBrDkG7UjBdwsvsN++ZimVvUbGhVMcGj+1l/oak6HIE15XBS
         r7W3VNTdqqvr746FlwvBSauSFVtZ1/9MT95FececkfAFDCYgSjbl60Rcqc/jzRE6aej2
         iBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pkBFtdG2gh4I+6zKJ/1ja48OTVaE1q2/1rHT6le0T2M=;
        b=umkkLbMXHCm3W9te0d2tVzXyfrG8TkuhoAWR8veG/7i2Ql6kCwW3ANfnhGbvISLlVf
         ExHN1CBqv4qIIL2FtAkewWUOT2cUPV4RsyNzyJLBlUhsds8lPUkKkq/dg/+E2sQQcPPU
         5T32euTZem9dcSVtLP5y0OTDVgBFlFG6b8tJUzhDb+MgBE0ROnp+iMXQIRlFAjeNV8+T
         QODuNSWB8JAlFFyXrujUYDDSairy0gAagcWdcyun7XlKtpWnHXFAvrVEGTR/mikncW8B
         tU5vc+qYV6sQ5Gq9q+VRGl+2rOdZr+MiOTw5v29oFMCZSZTyQ2viCA/Rx1D/KssQQ34k
         b1zw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531xCuStmgDJ3Mi6FQVYLuP0GCY3JBLEbvW6sjVWvU5r/L6gUXCb
	gbCWWaIhQoPLif786TRFOTc=
X-Google-Smtp-Source: ABdhPJyjIRgzUaLLGSfC4YwnChphqSsIkrwXel2dcFylurfabRpXTPbT8UR4FAdhM98KLKFlehW/vQ==
X-Received: by 2002:a17:90b:3197:: with SMTP id hc23mr1248575pjb.110.1597781418192;
        Tue, 18 Aug 2020 13:10:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:524e:: with SMTP id g75ls7465594pfb.10.gmail; Tue, 18
 Aug 2020 13:10:17 -0700 (PDT)
X-Received: by 2002:a63:6f02:: with SMTP id k2mr14321697pgc.191.1597781417652;
        Tue, 18 Aug 2020 13:10:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597781417; cv=none;
        d=google.com; s=arc-20160816;
        b=0FOVbvAjPkQcIuDkY3L8XRZnBo1T5gP4heXhYJ1QzDycbDyqFVWItvQ21fkduhv8j+
         hpYhVGK5YGSkY8IIBFKXG6jawwlUCckObA1+iyr8P74LS09YPXGF/lBegxbbXXDh9sNp
         zNy7lKC0W8kKaPVO/39PyCDG6AStcVLUCO9vpiSSnKcyX96fHlrVASs4h5PuOFbOGy5e
         XURb1nGE6Ekv5VcXK3X/oczqXQGjiFym5jauGuBoRO6/w91NCRJe41nyANtudP5C9nBh
         qIOZk76jUVfUH9YOLWFZdbugtmSkSBLHygm4IkTVT5AeOn7mxPIlRyPYDiLWKQOZ/NFi
         XBVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TVHg8iic3jhifLJcBgUbuICf6X+/XJrx7XucziWHTh4=;
        b=E2gqgu7PeBcYEuRZt8afuJSAdLT63EOGEMzM3QIlLJXtsHpsAv83PHmFi0vaXMVKGS
         DlYkJwlXURHyUN5rdmwoyv03ehObbfkYAa7KQ8puSh96mWeA0A/T9IH0hSk7IlR6Yoeb
         iJNdboNCZ2A/OjeKgGxaSsOUFOG+l8ewdev879nQy8KaXNMhZudTIR/6NDqzKm8iT9LM
         SjccAwRur/Y4lk4Vrlx+sOVexhltfK+PFs9mo2oF2c/UCsMU3WFGK+KuYLX2W4NYeUcb
         NvnYUaV13nenisW9ZG4c9FqyCVynXedU3QllnW2i31A7OZe6l2qsql0MbGvT+TP8AeAt
         Z/qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=XJIRNe3G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id 91si33129pjz.1.2020.08.18.13.10.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 13:10:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id kr4so45996pjb.2
        for <linux-ntb@googlegroups.com>; Tue, 18 Aug 2020 13:10:17 -0700 (PDT)
X-Received: by 2002:a17:902:6b05:: with SMTP id o5mr16351190plk.173.1597781417356;
        Tue, 18 Aug 2020 13:10:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id t25sm26530806pfl.198.2020.08.18.13.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 13:10:15 -0700 (PDT)
Date: Tue, 18 Aug 2020 13:10:14 -0700
From: Kees Cook <keescook@chromium.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: Jens Axboe <axboe@kernel.dk>, Allen Pais <allen.cryptic@gmail.com>,
	jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
	3chas3@gmail.com, stefanr@s5r6.in-berlin.de, airlied@linux.ie,
	daniel@ffwll.ch, sre@kernel.org, kys@microsoft.com, deller@gmx.de,
	dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com,
	shawnguo@kernel.org, s.hauer@pengutronix.de,
	maximlevitsky@gmail.com, oakad@yahoo.com, ulf.hansson@linaro.org,
	mporter@kernel.crashing.org, alex.bou9@gmail.com,
	broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
	mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org,
	linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
	linux-block@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	linux1394-devel@lists.sourceforge.net,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-hyperv@vger.kernel.org, linux-parisc@vger.kernel.org,
	linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-ntb@googlegroups.com, linux-s390@vger.kernel.org,
	linux-spi@vger.kernel.org, devel@driverdev.osuosl.org,
	Allen Pais <allen.lkml@gmail.com>,
	Romain Perier <romain.perier@gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <202008181309.FD3940A2D5@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1597780833.3978.3.camel@HansenPartnership.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=XJIRNe3G;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Aug 18, 2020 at 01:00:33PM -0700, James Bottomley wrote:
> On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> > On 8/17/20 12:48 PM, Kees Cook wrote:
> > > On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> > > > On 8/17/20 12:29 PM, Kees Cook wrote:
> > > > > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> > > > > > On 8/17/20 2:15 AM, Allen Pais wrote:
> > > > > > > From: Allen Pais <allen.lkml@gmail.com>
> > > > > > > 
> > > > > > > In preparation for unconditionally passing the
> > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > and from_tasklet() to pass the tasklet pointer explicitly.
> > > > > > 
> > > > > > Who came up with the idea to add a macro 'from_tasklet' that
> > > > > > is just container_of? container_of in the code would be
> > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > from_tasklet is doing.
> > > > > > 
> > > > > > I'd fix that up now before everything else goes in...
> > > > > 
> > > > > As I mentioned in the other thread, I think this makes things
> > > > > much more readable. It's the same thing that the timer_struct
> > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > ever-repeating use of typeof(), long lines, etc.
> > > > 
> > > > But then it should use a generic name, instead of each sub-system 
> > > > using some random name that makes people look up exactly what it
> > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > adding private variants of this doesn't seem like the best way
> > > > forward. Let's have a generic helper that does this, and use it
> > > > everywhere.
> > > 
> > > I'm open to suggestions, but as things stand, these kinds of
> > > treewide
> > 
> > On naming? Implementation is just as it stands, from_tasklet() is
> > totally generic which is why I objected to it. from_member()? Not
> > great with naming... But I can see this going further and then we'll
> > suddenly have tons of these. It's not good for readability.
> 
> Since both threads seem to have petered out, let me suggest in
> kernel.h:
> 
> #define cast_out(ptr, container, member) \
> 	container_of(ptr, typeof(*container), member)
> 
> It does what you want, the argument order is the same as container_of
> with the only difference being you name the containing structure
> instead of having to specify its type.

I like this! Shall I send this to Linus to see if this can land in -rc2
for use going forward?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202008181309.FD3940A2D5%40keescook.
