Return-Path: <linux-ntb+bncBDIZTUWNWICRBREPVT2AKGQEXQFORVQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id C601E19F3B9
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Apr 2020 12:43:17 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id l12sf13896236pjh.3
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Apr 2020 03:43:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586169796; cv=pass;
        d=google.com; s=arc-20160816;
        b=H+4MOpRat9Y+vqqQZVpQnKWs2/8VuyrC3CELg3wNvGXtlazq0vU8+lhCISu5wYNDCe
         zGiA7Wld5Rthging/sxd3IWDYjYJg5KlsL7GtD+2ZiFnz6yQhi3AaMJoY47VGJar8KLo
         PURRcpInFBeLbjhnUuIjbdnKSCKcfGfjKkfrpoaiuWwR4IHr/rzl934nIAqFOSxoATxK
         iJ2Sh6qqSSML1M90goDU5K4ebs/o2+YKLOwc6M3U3e46okTIaGNAgWcfmGxOsfvH0AYn
         sFey7myRwOu88z+euVCmoB3nSywdFFa6oruzigyRCYEB73HsUIAd8NOJ4++VeCjhRFwd
         EvPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9wv8q5EQnvzY4roCdvHS9tPbdZ1tdv8O4PyMKWlzR3M=;
        b=V2/cBV+vXYmc0khrh3pDVzB9w3vsQFdYXGoByc5ZEM5D5jlYE8K8zMc5FOKMDIw8On
         TIqE19QD2GtGzPEt3sLt19/40y9aEA55iF29fO+glTfhTeTdbuxgSHF1Swrfvc8mj5xu
         222Az2N7oWkIJ7oOirGTGb0aiKZjWZV+QpyB6yHgbpj52XOjdoJeueWEWQP927QcZpVS
         Bk3yZj4cnM2WZnLAPJMvYq9Wt+wB4PC+ZujB1pbJb24fdyS9AOz9x/UUwOyzdFEdokiB
         O+vLxx8+hcGTwPLTSWUg13vhurMQbUgocVLkLEZSPwK6CeL/iYBqAWPqkrMzH1YUbPkd
         e9aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=foDG5E5g;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9wv8q5EQnvzY4roCdvHS9tPbdZ1tdv8O4PyMKWlzR3M=;
        b=Fho4Z7FVb10+2Rz53CbCvpCfdLyTnCE83DxwDNdXsUjzTfPQ4lxkbxIfPDY3MQJ9iz
         f4WrnRJX0TMK3q6MCoCgetILJqm6VWEH74p4qwheH5e5Mgj59QiEEk2mUT1wnLKCP55I
         2E7C5cekW59++CyUjdDaIcuk8yUxmlssU+Zc7TeuqloCh6rZXwW81H4pbO7m8h+adHgg
         jBkZ1yzrmoGUSW7Gp84CY0HnshEBZG5YQ0BDdzz0Gt8B3lZ/YZuLJmdwOrMZ/8C83+a0
         x01YDisrPDccZmp0fa0qspamYhm2xKsOXLsmYQbPrqfE7eIymSEM/KQOJ0mkuC/Y79wp
         9MQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9wv8q5EQnvzY4roCdvHS9tPbdZ1tdv8O4PyMKWlzR3M=;
        b=Mdbm/hZgc3bjUIzFJhKf8nJhrtexhT6hmDArvMwQa3SEioDdIMItjA5trPzX1y3ukL
         gQgbMnrOT8v+NNvAh+nsMthMyzq7vdmlxoSvY1D6ei0Dpvcf/P5E63bys7ZOGXWkB6qI
         FkM3Vo1Yy2hq80flek9g+ttTT+AGyIG+Tb38k5Z0U7BbcOXyqKIssWXG1XFblFgaYSVc
         L449SSS6fViq3kpmdxST/F5ejv0aYV++xPqF1mL5PZ7xG5lpPdHoEfyEv70//FYuuY0R
         GpEIuvQ8OjEi+eDeuTZa2SGSRF4NvA4gBrqYF6fXzDfYjldCrrCcvpSr30N8lDhIn94b
         Ywng==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuatXIoPNFivtRfZ5SSEmyrEFqdpdxtDUN4/f7qtSm3QcePYLjgt
	xAVZUdFhONgwXm9Qrrd55ms=
X-Google-Smtp-Source: APiQypJVveluPuYH+ytgNmawX3jz/4ZgmdyuZb+p71xBUhQGuREn7Lr8wf53guW4l4RLNiu19CYgmQ==
X-Received: by 2002:a63:8948:: with SMTP id v69mr20260878pgd.318.1586169796289;
        Mon, 06 Apr 2020 03:43:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:5c88:: with SMTP id a8ls10130060pgt.8.gmail; Mon, 06 Apr
 2020 03:43:15 -0700 (PDT)
X-Received: by 2002:a63:5c02:: with SMTP id q2mr21861273pgb.262.1586169795916;
        Mon, 06 Apr 2020 03:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586169795; cv=none;
        d=google.com; s=arc-20160816;
        b=jneaqctlXt9xuqwFvYmbuRJfZAN5tv3OBuzov34ee7RspWQWvSz+BSsRPRGx8yhywA
         TzSYIUU7J4DCV8o96fYUBvwuRSC9aMPE25uxf0A/+sakgZpz5NU05afs8Lt9mEtWHsaV
         RoYqucfYqmJnRfKzi6v7Lp/QE+iXq57gT9/N/8Rc8hVeNZ6arnh42MJJo63/LvcqSYz3
         NUpDL4qPx8/578Nv1IMFSEHQGulGYCh2j195+KuoMlHae5Jat7NffpzAXL5y9h62JPAN
         OFxEwDcmLUKiC521u1D5L492JOapYeTqTgLC9ieJBNOPtNmUUjsG1cB070HC0YwrVeeo
         pXaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=p8C5wpTwRk6g1mekw1JmTiW65b1SzeLNT47JdsU4Dwk=;
        b=JpqA3c214toX45sAh9oxGUdGnCg/NSql4VQPYKAEPRF6iX5TMO/7vSbo0n4792mL0g
         9x4DkmXciWwZtL67Se9+xdvVa5bYVHQwDejPEYWkAFCaUrkld6JsXlY5hDm4jCFpzlAg
         hH4cMPh80ScwO3m1JzcJsVQFnHoZjgNgew8eSGaZXwzlIzqhhjr0wKwFXYwnPTdOY65J
         BDI7N+F6IY2MA2y6/UmOwuMQDpCzwF1Zih8J1nitRjZ9WLh6KssYmiGZTe2bY2lq8rIu
         CSj9CagziIapw0OcUeFnh2Udur4Q+bkqYqaNwPLIeDpMHcqXITFiS8YSQuz9nW/DIYR/
         2h4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=foDG5E5g;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2130.oracle.com (userp2130.oracle.com. [156.151.31.86])
        by gmr-mx.google.com with ESMTPS id 185si1088863pgh.3.2020.04.06.03.43.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Apr 2020 03:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.86 as permitted sender) client-ip=156.151.31.86;
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036Ae2hn184229;
	Mon, 6 Apr 2020 10:43:14 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 306hnqx2pq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 06 Apr 2020 10:43:14 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 036AcgmW077740;
	Mon, 6 Apr 2020 10:41:13 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3030.oracle.com with ESMTP id 3073spp3np-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 06 Apr 2020 10:41:13 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 036AfCFu025902;
	Mon, 6 Apr 2020 10:41:13 GMT
Received: from mwanda (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Mon, 06 Apr 2020 03:41:11 -0700
Date: Mon, 6 Apr 2020 13:41:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: linjiasen@hygon.cn
Cc: linux-ntb@googlegroups.com
Subject: [bug report] NTB: ntb_perf: Fix address err in perf_copy_chunk
Message-ID: <20200406104105.GA34519@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 phishscore=0 spamscore=0
 malwarescore=0 suspectscore=3 adultscore=0 bulkscore=0 mlxlogscore=955
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004060092
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9582 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 malwarescore=0 mlxlogscore=999
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=3
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004060092
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=foDG5E5g;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 156.151.31.86 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

Hello Jiasen Lin,

This is a semi-automatic email about new static checker warnings.

The patch 99a06056124d: "NTB: ntb_perf: Fix address err in
perf_copy_chunk" from Nov 20, 2019, leads to the following Smatch
complaint:

    drivers/ntb/test/ntb_perf.c:1017 perf_clear_test()
    warn: variable dereferenced before check 'pthr->dma_chan' (see line 1011)

drivers/ntb/test/ntb_perf.c
  1010		 */
  1011		(void)dmaengine_terminate_sync(pthr->dma_chan);
                                               ^^^^^^^^^^^^^^
"pthr->dma_chan" is dereferenced inside the function.

  1012		if (pthr->perf->test_peer->dma_dst_addr)
  1013			dma_unmap_resource(pthr->dma_chan->device->dev,
  1014					   pthr->perf->test_peer->dma_dst_addr,
  1015					   pthr->perf->test_peer->outbuf_size,
  1016					   DMA_FROM_DEVICE, 0);
  1017		if (pthr->dma_chan)
                    ^^^^^^^^^^^^^^
This new NULL check is too late.

  1018			dma_release_channel(pthr->dma_chan);
  1019	

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200406104105.GA34519%40mwanda.
