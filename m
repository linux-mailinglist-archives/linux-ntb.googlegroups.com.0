Return-Path: <linux-ntb+bncBDIZTUWNWICRBGFAU7UAKGQEXH2NENY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 445D64B1C4
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Jun 2019 08:03:06 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id 77sf18019915ywp.14
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Jun 2019 23:03:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560924185; cv=pass;
        d=google.com; s=arc-20160816;
        b=RNWluchr1afr2mW8J3cRZLEbEqQv6FyDv+s6pfSQGEKC218ez6DLVUYLk2fnL5a83j
         ps94TgF8FECuegOixM/f3PWhIFBtDGk8LZwg4woAUMSc5mhHXj/x+6mlW6zI8YtpKp0r
         z6V/hRAvk/7yneVrrOtfpLmESQSqeAC1m7QRZUJaBx7BOYagpGHVQFW41+EdyU14n8PT
         85FJH1fBHfDeoGgKZWCcaOjGdHlwtIsijKNBHjk56BDU5XGi3/9UtkOxniLWtsgdzwRh
         T6TFCkCULMJC6ACiagG9a5oZKO899qMXOh2Hgw9jKYdVSKLhXZZ1d8GjZ6xSA3F19twf
         q4IQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=zuQk7WJxr/Hj4l4rz3juS4jCGPoXM536c+3yPmEpDn4=;
        b=H9MPLkFYD/tWTfw9OtwcKN4G18oqsapfr0oyWJhEkK92PXuTAtG8zwspe+HnJwop9N
         IB8HD1+gcZdsb8kZyNW57cdt0MXNRprM4b/4jzGQL3N4OX1DCvC4WO1VR8kwAxwFOkp6
         k0KjEYzlty7HOZuZuRPRuXxZXL4VHjYSTyo4j7opQFTfpwDwaN5QwHvej0AUadgAmBp7
         6ELA+lQSYgvm5WC6KAnXz+fzM01yhq3C90AoOn38G/wMrb/HnntjIVyY90m0TQFjb3ky
         UYeD4uPazNG0JGS1R8F/FYY73vRCoutdoU/s1IDbHD7HgPlfWpUjuSOcydnq2p3omE3c
         KIHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=Xdp6jmAI;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zuQk7WJxr/Hj4l4rz3juS4jCGPoXM536c+3yPmEpDn4=;
        b=Yn1mvEcCHTA/kq8tq9JT7aXsoKxMsKbj1oQTvi9Z4fUTdfhlx/JcuE/uIGep0FEaL2
         9llvLyI8zLDvtq2Xqeb0SIWCa+fMVDV2aX39Bq++vFE6KLz9s/ft3duneLVYrPzCM1V7
         C/MiIP4jcYauh5uc0vxEw6vbvMYOO72Pq+mDAz6vKpgNUmP1pxHj2k0JxmrQZXNC2KT8
         RMbc0J4Z2gZamX6zwvpOojnGL6FVS2jDQPf5jzMjrl/mpGrSes4g/6ChQmo2mijuDJMO
         3+iy1d6UL8/sGqgSgO0iESpWFD8uS4s2Zg9RTOEURw7Cc+gEcVUIQELZqQjpX8E6BDml
         B6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zuQk7WJxr/Hj4l4rz3juS4jCGPoXM536c+3yPmEpDn4=;
        b=bumojulE1t7+NaMML2WWKuxEO21DG6uBfhFz56yoLkkke5Pf0y0v2klWDCK3OzwGz1
         fYILjZCFJxoGzpnPWEmKeC24DG9dwbRjDx2uhkG4sYScgfIgoxD2JhqqoZQhVVmguHcb
         H/Q8+3ktWeOCt3z/UlN1c0hntNaur/weg18XZAZcD3lv5jkjah26TIlZxhJCr2+u89ED
         4MnHDXOnq1/eSU2KM8f4lFpCeVkXjAuaonIrew4b+yCK+p+dTNNUaX8Bgoo+RtFJEtAH
         RzxaaSl0tYMNjaEMMGt7dg/mdVER01IbQzs1D/FRPngx8b68alb8PapmPD1FppaPrzJi
         aOVw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUqUXC3fN5xJb2rCCdSH5p0ZR8bSU8FI72W9uWgY3895WqeZHN6
	g9Hcnkyh3QBMZqWaZYFuTCs=
X-Google-Smtp-Source: APXvYqwW82KbrStvK52qkZYgJhatPdflZCa5K/KDenH+DzjzfhXcZdEoG5rf2+GLevJUP6z0rRZLcw==
X-Received: by 2002:a81:9444:: with SMTP id l65mr44218227ywg.32.1560924185036;
        Tue, 18 Jun 2019 23:03:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:4cd3:: with SMTP id z202ls181455ywa.12.gmail; Tue, 18
 Jun 2019 23:03:04 -0700 (PDT)
X-Received: by 2002:a0d:d647:: with SMTP id y68mr55521560ywd.93.1560924184753;
        Tue, 18 Jun 2019 23:03:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560924184; cv=none;
        d=google.com; s=arc-20160816;
        b=NlbqribTjz6YBmYF6hAZFfC/fjUWMrii1JvqMPJE1CRDjNjxmWyFF9fBv70UL0/wyV
         n9KqI8E8KopBYtA72ZAGOk+AYxTPdTT8d6oVAudIZWiOJfVKTVrZCcLOCb6/lXoAEGAG
         ik7irMX0TsRORzwSEp8FVBynJzHCfBOuN3pPhHSWhKi3vW/BL2L3MEF461w0wDK6XQ7n
         GORXZFvwmsFqBnZw5t36J/cGktxAlFPxnCKudY/V53Cr0UqdWB6kPkLFoWkJUPn5R/qc
         vWA7MagRz3zIIG08Ug+DUIgkYMsYbKSE3AlizfTUv4xbaDop1UjgSjqgXaSOqHSyeu9C
         dFww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=fPuaHyuoIZdDjft/e+uZtMrJ1AQaUg3H7A6qexguayA=;
        b=Sav9awMINVkCjv1NtayXLp7nGxiiGF1+Asbz1Z2UaJbZ4M6+YXHOafX9cDN+8eNJFy
         lqZO3tCnxYej/fQdZK83+FA+WjUVw8FYXIc/Zjz0y48k3oNNzcj8Rcf0rdaoJff+h1nY
         AMN3qNLa6nZDAh86iZPYZaMN1o1ZR2fnRvKlzbdEIqIbxXXS5ylI5gL+VwEpbDJKKzxP
         dFQMxQcUGgkweSL+X7GvIzp+i465qlpoGBFG3oD1/5I54EZ5pBA4sScY8niwV7mnn3Pq
         nDBeM3+dvCXOslE/vWhUeD19FRcgtrQMYlaSHgeeCEwt/3FvD3t4NauTHktyUL2M+cve
         BQzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2018-07-02 header.b=Xdp6jmAI;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id o62si952288yba.0.2019.06.18.23.03.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Jun 2019 23:03:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J5x9E5005962;
	Wed, 19 Jun 2019 06:03:00 GMT
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
	by userp2120.oracle.com with ESMTP id 2t7809987f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Jun 2019 06:03:00 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
	by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5J618QG126352;
	Wed, 19 Jun 2019 06:03:00 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
	by userp3020.oracle.com with ESMTP id 2t77ymvqtq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 19 Jun 2019 06:03:00 +0000
Received: from abhmp0012.oracle.com (abhmp0012.oracle.com [141.146.116.18])
	by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5J62wxS019790;
	Wed, 19 Jun 2019 06:02:58 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 18 Jun 2019 23:02:57 -0700
Date: Wed, 19 Jun 2019 09:02:50 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
        linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] NTB: test: remove a duplicate check
Message-ID: <20190619060250.GH18776@kadam>
References: <20190619053205.GA10452@mwanda>
 <2f4dea74-d78e-8b53-8dec-df8dc032759c@deltatee.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2f4dea74-d78e-8b53-8dec-df8dc032759c@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=941
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906190048
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9292 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=994 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906190048
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2018-07-02 header.b=Xdp6jmAI;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
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

It's not a huge deal obviously but your commit was a6bed7a54165 ("NTB:
Introduce NTB MSI Test Client") but you know that if I had sent a patch
called ("NTB: remove a duplicate check") people would have correctly
complained because the patch prefix is too vague.

What I'm saying is we do this all the time:

[PATCH] NTB: add a new foobazle driver

But it should be:

[PATCH] NTB: foobazle: add a new foobazle driver

Then I can just copy and paste your patch prefix instead of trying
invent one.

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190619060250.GH18776%40kadam.
For more options, visit https://groups.google.com/d/optout.
