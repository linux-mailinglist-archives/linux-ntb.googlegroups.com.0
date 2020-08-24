Return-Path: <linux-ntb+bncBCS4BDN7YUCRBM5LR75AKGQEP4NHYPQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id D2302250047
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 16:59:00 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id q17sf6749473ile.22
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Aug 2020 07:59:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598281139; cv=pass;
        d=google.com; s=arc-20160816;
        b=tuuxUxm/NgLtRChdlpxCYqC1kGg5ztZNVJ6EtYp0u6KFJCYH7jmNS/frDuHGYj5DEd
         nLLIIYdmk2z/cs/HOJdLsAHcYxSebHnbua8l+LHnEaOavHOFvcgc/EI0uTNRtU9Ksk86
         cqeGt6dNUpOIeB72p9agjeNHgOXFEsEG+NJx2nVXplZ6tufdiwYR3gYUy4PuztFU+gPN
         XqNShV2pScLDHQmT6B/VVuxWWpDk+0KPpiCTFBz5Wlxa4Ec55eI6ycCpYgZi1Ev5zhKP
         yxO9vgjgAPYrN77EZGFcfveynJtPVPoqOTKJI6xH0eN0+nyMO72kkDIwfyCY5aNhA3+p
         FQPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=18r9Inpqey3uBpZdOxyMvRSKTUDIKhefBOYDKZUvF0I=;
        b=Di5DtTR6uJu3mt2tv8HbtbTBkqW5R+Tew8y3XJ2LEUU5+n+xijFZjBKRZ6HY73TwTu
         uFvMeDz+v9t659KVR0rMvFAElchjLud1K0vmXB+TsYUXDET1vnz87mQDkj4S5/3Go/jf
         cgQCOkUTQMGtW+orPtVxuRfWkdB8WOyQF9Nv9TaltYw/B0zAKPC0+KdleaDn/qq3jfLp
         tnVO1Gw2j2GehOCOH23oWJO6CSGUNOZURAgXfBvUfZ+OP8Nz+vCdD0J98JmhqGSqWm2d
         7QLarfGs5FgCjye6GxM470yZQAQsXd157BDpEA9QUHzSVYkdy8pPWktB1EA5udAxhQSP
         SjQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=HSIPxwRf;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=18r9Inpqey3uBpZdOxyMvRSKTUDIKhefBOYDKZUvF0I=;
        b=p2QeiP/yldAP9Ip+yoKsPZhwQTMUs3VV2tmvVs0aZmqJIgaTYdAQTUJe7PzTXJh7ur
         fXYxRoq/XOvDToHcta3d6a3T/x9beoXDl77PAIASWBF/zHnBKge1OHwwDAo2u4WJKBaJ
         VCygMGb1ORjhq+ckrpjOinFqG3tZ4UX4ilTVvCikPGPxF+PKt76Vn2TfEl+Q9p89Y5VM
         3t2rfBHUsiFrU9v6GW5D32/QXg7uTK1WoEMXAiU6uYq5SXy1c5PRxPVm4+MxLOAVbU2j
         zrJS54cJkXpapxw1JWdae0vUSI74+cpOXJQ0ETqPJmV0ylsDnznn+1D8muVD3MVcXFlO
         4XbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=18r9Inpqey3uBpZdOxyMvRSKTUDIKhefBOYDKZUvF0I=;
        b=OR9N4L2DD118gTZdmd3zl6JqF6fShVmEHlm8L3Xk37XG2vw3EM+LS1JIlScphQvQXL
         OrRH5RE8GZD32/ii62RhIMyLxetL+qI/aMp7TyVsljO2LFQnCXSJ3c0E2bm5jx/VhIYN
         b4AVj7zEy6y026qp1r9+qpxukiOXsR4TqrClE43s0G1jLuKEsNF1J4liOjBOQS99uVLf
         tWBKeXvjaDfgvI+dTfHYiCx+hvE6NxBaQfI9S+oTZr96s+TDzcYyvrFlOkR4VqOby4YD
         jxGWPNnbKGd3yHY99iq2P3IuSfcDN288Pln/a4AUNU17zA5GUWH9aTFOrrEWzayNmpEE
         5BIA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532EJz6QoBftGoJAE3iM8PI4nPMRwZeFEDS3Ax8BFIZczE3Y/iOD
	3yPKc6TEWtH8R+REtOKg7jU=
X-Google-Smtp-Source: ABdhPJzdu+ugGh7tjC7MeS4bvRd/370k1r2ubgGADsnyMvV6wqWjn6VZRlNqt56UHs8EDkYCJED6Yw==
X-Received: by 2002:a02:9149:: with SMTP id b9mr5948956jag.50.1598281139737;
        Mon, 24 Aug 2020 07:58:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:12a4:: with SMTP id f4ls876566ilr.8.gmail; Mon, 24
 Aug 2020 07:58:59 -0700 (PDT)
X-Received: by 2002:a92:b6d5:: with SMTP id m82mr4943750ill.245.1598281139318;
        Mon, 24 Aug 2020 07:58:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598281139; cv=none;
        d=google.com; s=arc-20160816;
        b=mdAK3ohyegJ/zgU5/bEeCMq2B19BFy/j+HZ8SUFQWAd0E/lvCsIRoatLvZoTQpcejc
         E8IIgBQlfmTgnWL3kDG3MML2FBXSLiMlobKTNVHmCYmZtBIiT3Zx8xIyduntcOwQYO+S
         7dAEaryYc2A6TnV+vlxPn72z+0Y6mRlAm0dRhSdY/o5CO+qry/2e0zxIZGKyVQju4T6F
         5P/CdvU/lZIn4lcMzr4sMBs2suRal0gFJBfChvbgajavDlfe0ve7dnb5qgiZM7S3kI6v
         iN3BFR6AcaRhoICuptm0HbqrsJKb8xMUzUAXTYGt4eLaTwr2CK+lG2TmZzyCPowAGAFa
         sg8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3Lg6YN2Ry/B5cxDee3oV4xQ+pmJ7iBF1X2dnFCrvvkA=;
        b=XQn84LuNyw6EoKmCcwKnDyrfyYLfCiyZ5X93+HKcWA/hFWyINoiY1hNNiOEURCKAIh
         UidwRfuyLzJkm6dLWHuUPvQRWRGP3ULJPScgXNaq5/437ohPqK44g7wxK24dAHV1I5LV
         fJHEUyXgv+suZqQ16fWpOtxls4VY6EhOFEzRRTtK6EFOxT1HbvU3Fmv0qJ4wLRUB9ctz
         TP4Qr66g48A5E+Fodvv4QFUhLt+kaIdyku6GddwJzIZIruQr80aRVibT69aO7mCi6sya
         BWHs6fEypLOFN6sK4gKYadIGzwPY/7+4jpClaO/qopn7t1AG9d5+cJ5ni98TCfVXWyLm
         5E6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=HSIPxwRf;
       spf=neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id u9si557737ilg.0.2020.08.24.07.58.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Aug 2020 07:58:59 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::843 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id v91so964832qte.2
        for <linux-ntb@googlegroups.com>; Mon, 24 Aug 2020 07:58:59 -0700 (PDT)
X-Received: by 2002:ac8:5685:: with SMTP id h5mr5281977qta.378.1598281139023;
        Mon, 24 Aug 2020 07:58:59 -0700 (PDT)
Received: from kudzu.us ([136.56.1.171])
        by smtp.gmail.com with ESMTPSA id m66sm9472178qkf.86.2020.08.24.07.58.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 07:58:58 -0700 (PDT)
Date: Mon, 24 Aug 2020 10:58:38 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH][next] NTB: Use struct_size() helper in devm_kzalloc()
Message-ID: <20200824145837.GC27238@kudzu.us>
References: <20200619172514.GA1074@embeddedor>
 <268330b2-e42b-4d62-1ff0-8462d68e498e@deltatee.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <268330b2-e42b-4d62-1ff0-8462d68e498e@deltatee.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=HSIPxwRf;       spf=neutral (google.com: 2607:f8b0:4864:20::843 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Fri, Jun 19, 2020 at 01:10:55PM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2020-06-19 11:25 a.m., Gustavo A. R. Silva wrote:
> > Make use of the struct_size() helper instead of an open-coded version
> > in order to avoid any potential type mistakes. Also, remove unnecessary
> > variable _struct_size_.
> > 
> > This code was detected with the help of Coccinelle and, audited and
> > fixed manually.
> > 
> > Addresses-KSPP-ID: https://github.com/KSPP/linux/issues/83
> > Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
> 
> Cool, I didn't know that existed! Thanks!
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Added to the ntb-next branch.

Thanks,
Jon


> 
> > ---
> >  drivers/ntb/test/ntb_msi_test.c | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> > 
> > diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
> > index 99d826ed9c34..7095ecd6223a 100644
> > --- a/drivers/ntb/test/ntb_msi_test.c
> > +++ b/drivers/ntb/test/ntb_msi_test.c
> > @@ -319,7 +319,6 @@ static void ntb_msit_remove_dbgfs(struct ntb_msit_ctx *nm)
> >  static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
> >  {
> >  	struct ntb_msit_ctx *nm;
> > -	size_t struct_size;
> >  	int peers;
> >  	int ret;
> >  
> > @@ -352,9 +351,7 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
> >  		return ret;
> >  	}
> >  
> > -	struct_size = sizeof(*nm) + sizeof(*nm->peers) * peers;
> > -
> > -	nm = devm_kzalloc(&ntb->dev, struct_size, GFP_KERNEL);
> > +	nm = devm_kzalloc(&ntb->dev, struct_size(nm, peers, peers), GFP_KERNEL);
> >  	if (!nm)
> >  		return -ENOMEM;
> >  
> > 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/268330b2-e42b-4d62-1ff0-8462d68e498e%40deltatee.com.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200824145837.GC27238%40kudzu.us.
