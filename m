Return-Path: <linux-ntb+bncBD46PUMSVEARBBPJ2TYAKGQE43SW24I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FB01338A2
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 02:46:47 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id j9sf1197586ywg.14
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 17:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7lw2BRI83UsU+2WKJdOWRrt7H/cSjVqqLuEQzCtwo4w=;
        b=a3c5b1PuRKZIP29D7v7yo9PEfIjy4Lacu1xUmA9qWV6ChuLrhviiJSshw6n+bp7vvB
         E1rn4H7gO7W1RYcujD7mqQ+LUtVle4kdgjLSp47jXTMTDcroAl58+ngK+zpL3nO/ixvd
         SlbS+EcUIxLZpWWf3prtIi+0O5/z7JSqqP/j0clqMzCos5t3KT4RNar98j5Blgcb3i9t
         IdU1i8UWkKOi3rCCR8J9DR+Poxv+MwXaTNBWJIKsRyJeXzIeTNrGjAwbMc4T7oLGwLar
         bIy0KAdPQmOW6rw4BkV8+j7GOQvixVL15pIR/QgNh20ABRTnCdVvH8UK0R0rhzN0+uN7
         3I3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:precedence:mailing-list:list-id:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7lw2BRI83UsU+2WKJdOWRrt7H/cSjVqqLuEQzCtwo4w=;
        b=gKOwFrCw0N69q+E3gvQD72oyUz89VKek/nO6Ypom9b7Fj6P+2dgxeyX5qpYwLmV46m
         5ELGt2m7q/ROBaQEfqsSoZUelQaaxATNaTj74aFoGFnamWDoDwda9lCnR2nY7ZsZxrUv
         N6qAg8/eKFNwbZi0RgdYR8Xlwja2ozWIv27UaG2qUtLO8IQRhlmQrxhLaD2OG0C1hlz1
         l8gpXaPWOseuqwRepvZA7hXsvdmUVzLLtA1CK+6yyp7c7zEJXF8o44aHA/Eq7Qx0tajw
         ON/I71qJnra29pBEWSAYTIFOLHxWIYH/pVFP8UnDEt8oSnDME7pTJyJfI91otmh0NbPo
         Cn8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7lw2BRI83UsU+2WKJdOWRrt7H/cSjVqqLuEQzCtwo4w=;
        b=TiVXS9iu+f7e8AXWXLNd+0RNSBgJRKNZk43K+HZiKEzzq7JpIEkym0aKMk+uLv2aQq
         Umik/U6CCwvrHMsjV8TX4RBCbcKsjYFWtLJ6aQQfMH5yAzfEq76ZvOvQZSBAN0GmScUp
         qLxgmvEOIjutypGTV3xRUsYs6iOWEavmLV2RWFi0RfJVWR8yYPW/3458e6uXe4bTsAAO
         yFLDI3k2lp78rfU+RziBE16DGCOV2xeLss+IVpEW6hUdH/OWvNRjUjeDoTJBpsWj4xDc
         /xQN1XvJz12XxjFkgNsFBtXqfvgYszsjB/Qxn1ToaTWRDfufA0qHOsLp0A56ByBawGZj
         0NRQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVg8CwyGGjjJ1sdsPbA9Pl4zTNPGJ4iNT5lNdDa8MiUCcplND4c
	D24+3h2OyxDbmDR/Ug0v59Q=
X-Google-Smtp-Source: APXvYqzQjZ5bZrse+TT1+A6XT1tjIN1L10O6KaxqEmDcU7ggdFkfUekzY8It6c6QpR2ApnfS6lfQ6w==
X-Received: by 2002:a5b:381:: with SMTP id k1mr2151212ybp.492.1578448005957;
        Tue, 07 Jan 2020 17:46:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:d4d5:: with SMTP id m204ls279648ybf.5.gmail; Tue, 07 Jan
 2020 17:46:45 -0800 (PST)
X-Received: by 2002:a25:704:: with SMTP id 4mr1986627ybh.391.1578448005265;
        Tue, 07 Jan 2020 17:46:45 -0800 (PST)
Date: Tue, 7 Jan 2020 17:46:44 -0800 (PST)
From: kisieltmk9666@gmail.com
To: linux-ntb <linux-ntb@googlegroups.com>
Message-Id: <307f54a3-9825-4fb6-8cde-7b5924648373@googlegroups.com>
In-Reply-To: <CAPqfnSEO==O6BEtBbcMMZfh3qcY4Bz0qndhCqbcLqZx4DCs44A@mail.gmail.com>
References: <CAPqfnSEO==O6BEtBbcMMZfh3qcY4Bz0qndhCqbcLqZx4DCs44A@mail.gmail.com>
Subject: HERE IS YOUR MONEY GRAM PAYMENT HAS BEEN SENT TO YOU HERE IS THE
 M.T.C.N:78393135
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4674_369086458.1578448004703"
X-Original-Sender: kisieltmk9666@gmail.com
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

------=_Part_4674_369086458.1578448004703
Content-Type: text/plain; charset="UTF-8"

Hello

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/307f54a3-9825-4fb6-8cde-7b5924648373%40googlegroups.com.

------=_Part_4674_369086458.1578448004703--
