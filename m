Return-Path: <linux-ntb+bncBDIZTUWNWICRBQPETD5AKGQEA655OXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB89252AE7
	for <lists+linux-ntb@lfdr.de>; Wed, 26 Aug 2020 11:58:26 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id q89sf991523pja.3
        for <lists+linux-ntb@lfdr.de>; Wed, 26 Aug 2020 02:58:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598435905; cv=pass;
        d=google.com; s=arc-20160816;
        b=TjTl4pjA0HqnmeILTzF6mazFetvqgQM5X8XVm7jstEzQKzFab27iKryRmC7CT1UF6o
         M1+nEd+yjzEbisvi0tj/DtrZ5oPmG1xzJFFxj6XrEtGsKeGZT35kwZUVCHmt8mTYOjgd
         g/Cu7BxOfZoxt9MRgYgzykPobeNhUtflxNwl2vb2y2tLNqdJJcUCnff+oa+1dvqqDHLe
         u1JfpTVG1KmFZGkEciyg+INsZcOTU8vbcAILuXva1unDm/hVs+Zyc7zbRqxLloz31KIS
         dI6ncStvruyrezI7MM68oT0pdq7uovsiSBZxc4g/V0uwYNhfXuXRXotKe1dJ1Ogb3KzV
         FqSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=pKC6adbTYVkkVx7KvieVC9RWnpLeFITKzGOSz1dwdIM=;
        b=ajficF1gbQdSpPc2fjeAk6m1yDplZbJGH/jZzeQ6a+qzcznniVe6tJKCHOsC9da31Q
         tjfLjRWqsGaUoAlQw5ZS0PcOEUThKzXpmc5IA001ogesw8WsHu8znspyhvrzj3Zl1VD6
         puU0pYlWc0X6H67rAiu4VPlsyQoi6cYyg5RwseNVSOEFQCRAvul9tAtFBV9lAmroOpZJ
         eiU27xLkw98CKXDf1xnfvoD6sro9g5hdieSfF0KnUF0dozyAVb4FQppFEYpANDbFaelQ
         mXX0JtoD4UOc1af53DNNBUBR5x3+X0X6EayhX/J2zjSAz+LZgTakSKF/4l0bkWZrkcVf
         YGWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=pHUo6T87;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pKC6adbTYVkkVx7KvieVC9RWnpLeFITKzGOSz1dwdIM=;
        b=Dd1b8AhbMursIaUzZVwVuwjhgOc9rZntfUwyNUdm3NOLyGeQBUTPp8z+Qbv3SefnWS
         ZIAhAMMvteX8pG90+yz4qMIs3uk4bdgQ866BYP2qkmvC/7i+nwvZkszKlS8ZOTrhde8S
         9JNg+0tnYBoO8uvFVHGrDwXE+Bq+5T4jG81vR6EPTUQ7LiEgi7MalHp46dYcVhmwg5pM
         bODvKT0qWD9YErzFakPnONBaTY6aFnMw49UF4taib5F1+5yQkWjYCSTyQyhzPGoUHC0u
         /zS4WpC+H7YKXXTvmlLM45niJW+p0m+J9acLQzVFp9d+nBjJuRtXUiT1wd9Z7m7KGBEy
         oEvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pKC6adbTYVkkVx7KvieVC9RWnpLeFITKzGOSz1dwdIM=;
        b=OXNdN/WUqj/90xfkUY+2ytMe2QcrhFtqFo/qIJ46g1+nfXUwhBzsw5NyrpwYruua9w
         hjfdL6GpBJV1HNN2fpyYqRkP1pYTmS5jN5jmvIciElCovhp1gu7hK8vg0fAzTZ13WqI8
         UFqkJnUEvoRfr2pSE8VGP6ePp6kL4+HUd4GGI1MabciGSli1Rozzl8CNe35VOzcx0r6N
         ijXvYYVCayYchxNhrjHN7DjH3cBFhFKqHeDof3uhvbJeZWBKFUojW/DxZXrM9bHKd2Za
         xoO6bReLKEfkMP2d/B21dd49tnha3oIH8tHPcJpea9NcWorxbcOTyTY1AxMdvwN0YJL/
         FY/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Ab9sK8QjYN/jTF0NplUsRK5mkcCH6UP7ZqS6oA1V3ymIx05ot
	e3ShE4qczAQ8jJk70A4Np2k=
X-Google-Smtp-Source: ABdhPJwN+uPrFHkjNcX8WvNoIRww6X7XF/lGWV4MkDabEtPZfiL7LjvDmMq+72c/oFBm8/JFMAJVEQ==
X-Received: by 2002:a17:90a:e7cc:: with SMTP id kb12mr5376563pjb.204.1598435905353;
        Wed, 26 Aug 2020 02:58:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:15d0:: with SMTP id 199ls816636pfv.1.gmail; Wed, 26 Aug
 2020 02:58:25 -0700 (PDT)
X-Received: by 2002:a63:4450:: with SMTP id t16mr9894266pgk.3.1598435904909;
        Wed, 26 Aug 2020 02:58:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598435904; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDKepeJAiCi+EH0iQ+57Sr0SZI1DzS4ZDtxNLuepuwvcGfBCwT7jPjin4rGNwVf+Ji
         UGOsrLTFQRkvWjw8wIXTmLZlKMXAl/7+5eZf3DlPWPfGeQdIwOOA91BA2Fc06g1xGozp
         Z7QTzyZjzT7Rkk6yrfXUxy7C/qCFrB/2fjVzd2w7GdRU48ztxepbBwNbmVlTTzU6X4D7
         hBCxMqzV3OuDXyeDpoF8fxBccHAsVd/CpZuMOM1R/Yk+i4dtM+zM6A04YXb8rHljKfFf
         5vsgGBATiqLQRSO9xbNyqFeV6ObYN4AfOb8yvY+80rS4XGBoRf4yQ3QHhanhCsAbW7um
         xXdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=99lx5iUfIkT1H9yGqvvBxJOhPDkHKQlkIHLEmQ8PDXw=;
        b=zTO/Bb5gtRfLYgDEPiMpLrEEAUu/QFKv3QPiDXR1HpWtxEWcHLmDwctYLMhoxqMF4g
         55WOy2MicAb9LxtKEMhEXInF90ATtySZFGPBArnxRKUuXCJhRc76YHCfN50xuHYUfrVF
         TrN7Zz3b0w5L4rw75xyEltBnbApbXwC6XdDbU0gY/7fD4yHpTlZWNp5kCFCtwa8tKlKc
         LJyR08weyJMa4Cy7aK13DEbEW/5h+60H7vU+V1uaq1ZdKFywadPQkU7hMmzplFx/HkHS
         hXwQmp5iNPrhhfvNThcQwTBZ/bDkE5oTYMDZ6sMdRX61Fu1FodBRPCmm4jp0vupeHoF9
         Xybg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=pHUo6T87;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from aserp2120.oracle.com (aserp2120.oracle.com. [141.146.126.78])
        by gmr-mx.google.com with ESMTPS id 129si85991pgf.2.2020.08.26.02.58.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 02:58:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 141.146.126.78 as permitted sender) client-ip=141.146.126.78;
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
	by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07Q9rmML110211;
	Wed, 26 Aug 2020 09:58:06 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by aserp2120.oracle.com with ESMTP id 333dbryf24-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 26 Aug 2020 09:58:06 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 07Q9odrR139540;
	Wed, 26 Aug 2020 09:56:05 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3020.oracle.com with ESMTP id 333rtywr8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 26 Aug 2020 09:56:05 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 07Q9tlAJ026067;
	Wed, 26 Aug 2020 09:55:47 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 26 Aug 2020 02:55:46 -0700
Date: Wed, 26 Aug 2020 12:55:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Allen Pais <allen.cryptic@gmail.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
        airlied@linux.ie, linux-hyperv@vger.kernel.org,
        dri-devel@lists.freedesktop.org, sre@kernel.org,
        anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
        linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
        maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
        jassisinghbrar@gmail.com, linux-spi@vger.kernel.org, 3chas3@gmail.com,
        intel-gfx@lists.freedesktop.org, Jakub Kicinski <kuba@kernel.org>,
        mporter@kernel.crashing.org, jdike@addtoit.com,
        Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
        s.hauer@pengutronix.de, linux-input@vger.kernel.org,
        linux-um@lists.infradead.org, linux-block@vger.kernel.org,
        broonie@kernel.org, openipmi-developer@lists.sourceforge.net,
        mitch@sfgoth.com, linux-arm-kernel@lists.infradead.org,
        Jens Axboe <axboe@kernel.dk>, linux-parisc@vger.kernel.org,
        netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
        linux-mmc@vger.kernel.org, Allen <allen.lkml@gmail.com>,
        linux-kernel@vger.kernel.org, alex.bou9@gmail.com,
        stefanr@s5r6.in-berlin.de, Daniel Vetter <daniel@ffwll.ch>,
        linux-ntb@googlegroups.com, Romain Perier <romain.perier@gmail.com>,
        shawnguo@kernel.org, David Miller <davem@davemloft.net>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <20200826095528.GX1793@kadam>
References: <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
 <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9724 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 adultscore=0
 phishscore=0 spamscore=0 bulkscore=0 mlxlogscore=999 malwarescore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008260078
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9724 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1011
 priorityscore=1501 impostorscore=0 phishscore=0 malwarescore=0
 mlxlogscore=999 spamscore=0 mlxscore=0 lowpriorityscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2008260079
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=pHUo6T87;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 141.146.126.78 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> >
> > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > [...]
> > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > kernel.h:
> > > > > >
> > > > > > #define cast_out(ptr, container, member) \
> > > > > >     container_of(ptr, typeof(*container), member)
> > > > > >
> > > > > > It does what you want, the argument order is the same as
> > > > > > container_of with the only difference being you name the
> > > > > > containing structure instead of having to specify its type.
> > > > >
> > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > getting rid of something, which isn't really true.
> > > >
> > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > outer container.  I thought about following the C++ dynamic casting
> > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > outer_cast()?
> > > >
> > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > some clues as to what is being done here. Why not just
> > > > > from_container()? That should immediately tell people what it
> > > > > does without having to look up the implementation, even before
> > > > > this becomes a part of the accepted coding norm.
> > > >
> > > > I'm not opposed to container_from() but it seems a little less
> > > > descriptive than outer_cast() but I don't really care.  I always
> > > > have to look up container_of() when I'm using it so this would just
> > > > be another macro of that type ...
> > > >
> > >
> > >  So far we have a few which have been suggested as replacement
> > > for from_tasklet()
> > >
> > > - out_cast() or outer_cast()
> > > - from_member().
> > > - container_from() or from_container()
> > >
> > > from_container() sounds fine, would trimming it a bit work? like
> > > from_cont().
> >
> > I'm fine with container_from().  It's the same form as container_of()
> > and I think we need urgent agreement to not stall everything else so
> > the most innocuous name is likely to get the widest acceptance.
> 
> Kees,
> 
>   Will you be  sending the newly proposed API to Linus? I have V2
> which uses container_from()
> ready to be sent out.

I liked that James swapped the first two arguments so that it matches
container_of().  Plus it's nice that when you have:

	struct whatever *foo = container_from(ptr, foo, member);

Then it means that "ptr == &foo->member".

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200826095528.GX1793%40kadam.
