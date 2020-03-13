Return-Path: <linux-ntb+bncBCS4BDN7YUCRB55FVPZQKGQEQHNAPXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id E8587183DD5
	for <lists+linux-ntb@lfdr.de>; Fri, 13 Mar 2020 01:25:28 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id k194sf6190560qke.10
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Mar 2020 17:25:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584059128; cv=pass;
        d=google.com; s=arc-20160816;
        b=B/UU7+X/TFW265WaedOqy8J6ZebZOA9k+mj1gmi1PdlRG025vse5X/CrvgqetNTKzE
         qjpiOM3ER7sfBYzdITD+1uu1pSa4Rii9sneSHg8AWCzNYeqM7vicOYifuPiyyFStmGyS
         SgCLM41oRyS1MOD3mRVfIcTCBjXtcmjEv7ifJ1RV5ZqRyJ32feLS8CkzIVTBOgO8k3VB
         itbsxl1R0Y+lVFhVf6PW48dJl+UtdH3AwhN0VdkdRsazjvBIn8MyXohj9yLNcV9Bb7aS
         Qlt/z5GWpn6Zc7DWTnw4n+qGMDHw7XEUxiaJdOmC8QeE+z7sjZoBc4Lkh07OKQEjgI4e
         eLxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9ZE3NO58jB4b4d5nJ9weEemV/fAwQyobEr3fcnxjcH0=;
        b=G8JkZXdJvL6mBtDoFGZxt67SV7pfzAi6hYAqj/h4+DDYJDOw27KIqsJJw6cZx7ex6b
         HuG737EV8D5vLrrQrMZH98AJALlvHGmn7HoOT35Dd/qopNNcbrKcqjhQz+wM70He3aIN
         7Tt7mzVhl29SXGhkLuFAERLuVRN4B6uLCbg0OPBGjpiZt8panA0Xe1+Zcgr6XgzhTd8A
         fXvMQI3DgdcyLz9Jv9vMRnxEfUwTMDF7y0qRJp/bSFnXiZY4bqQTHXwbZmyzBj1vv8pZ
         SoASTZ6cN4cNgWt8h1QI5W18cpTrxrYEUk2ORI8G4xfgxRYMFuZF9q6cMcgjFv1brVgK
         UsQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="XxIq/hao";
       spf=neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ZE3NO58jB4b4d5nJ9weEemV/fAwQyobEr3fcnxjcH0=;
        b=GaOgWyFYWYWMpBqup+Og8VF+9WT93M5aiiU2hFUeLZGKvyYetV4fzhJSGBr/b18sVP
         LMcMv95MNpKw1K0aa3XAqQ2RWDSBe+M9usL7yGr7tD4XMdZkRpSvOJ4lRQfWE9J6XKLw
         EimATtBreOXk6tNwqNitr/HYKR7r5d4nB4swlhxYAxq5vZIPmk2rvoFevmTtf7bT1gR8
         uBPzy/pWh4Z5HOmN4urBnl8wwenfaI/WtJZHGWYqKJPA3PVsOTxpt4AwUCvQiE7dapZb
         +x4sxGhpJnLDnoZrqNp3ccJDsyy+of+8fR46NE4NukdoADHu+nDbJe7/1Y4QwRJPL0yk
         OqnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9ZE3NO58jB4b4d5nJ9weEemV/fAwQyobEr3fcnxjcH0=;
        b=mv3Hs/4dSlIr34GuYob00wzt54WzfgCoJcvR35s0wc9b2DZHRt5mho6NQY+hzr9tWQ
         nErt8qlS6tftkOX9eJlsZW/IrcWyw3HBepXUgXH5UV3xWtV7aTmUreLzhuGnd2EBfPAZ
         UAB6NOf2U5X41BnXRDFNTCHIiTvh1RK6f9lGqf+5VZJ46z8vlqF2CcY7It1IZzTqiJG0
         sX8p1WtYg5FvDaozn6FbRFpsPYxx22Rti86/X2FhwTUps2iexauN4lGNR4pFZGQ3FnxC
         cXYq2WMNydpnH057mIYFWU7QhlbstwBH8Gz+KY7qdaT9GgaD6lTviBtDZWEHcpeFbrJO
         Hb+w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ANhLgQ2m3WhNHVb2uJFYIdMrF0HLtC8Zx6KY/xxSbXo1/UOrSKzgy99W
	yyxbW3U8sOCfkLqgieCwMVA=
X-Google-Smtp-Source: ADFU+vvfPcI5J9k6vgcBAXsGKtGQ90S99jglxUHjX379+2G//399mEo5lae6zgPVm4JvuG60TOWtWQ==
X-Received: by 2002:a37:ad15:: with SMTP id f21mr10742127qkm.84.1584059128038;
        Thu, 12 Mar 2020 17:25:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ad4:40ca:: with SMTP id x10ls1758457qvp.9.gmail; Thu, 12 Mar
 2020 17:25:27 -0700 (PDT)
X-Received: by 2002:a0c:fa03:: with SMTP id q3mr9470153qvn.228.1584059127638;
        Thu, 12 Mar 2020 17:25:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584059127; cv=none;
        d=google.com; s=arc-20160816;
        b=DnctlSNlcpXvtrHPnl66i/0rKeFAN1/WsJ1AVLTGnC5zoRDaYU3jHUEy01oH+HCWh7
         bjyIHicnqaGS+qJSrYRlZv/xydn0UJbvNfASQJTSxck0lmHXvZXhXvrKDctvD8wTKsZb
         bWJ6vGzyqr+m5xRP97Ex4JzoxYq+eob2Pm3HChYH3JZa7meIwUXDMPktlnj3nK8G9XJJ
         AIJtDvfsDyur4LsvL3axE59oYRO+mNJCOIa+E829NW/tuAbNZrKBh1C2xo+KEd++oY5w
         at7dJmGQ/WgWbCvfl4eFzeBRuu03zRahOuP0toxTALOuhF6vQZ8deMXRy6NCsQWSlw1L
         joyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Be5NEGu4YJrkQL2c7HnPWgWIEPjdYRo2oZeDR69bUv0=;
        b=0Fax3pv5JEON0X3uXzn0Xy6ZzFFrMRir0eymQzyPHCo495BBPY3cHYxhUSt3Ezjch/
         0+jnOV0G+O0cmIJJmNngwRu0nXvt1fIY5u7aLfIl6cMl8rIYkDiFLQKtBdTbjzXXd3w8
         Pa871MQ7y5Ntw7klaQzajEbcIVk3EKES1ZTkiWAW+GeovC1O1GEhCAStscg6sLEELPs7
         PxBVfblUampmWpBPgZbEaPNaMhwRjPJEnxQ4kZW02wWLEE1lLb8Bb1EDsuWXfiP6aprv
         7bnaBHrz5mxhJMk6t+bhCs+EUPG//WqihNwHcSVP2wpxLYhruMVkAxJc6L+HxE1/DOjQ
         GWrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b="XxIq/hao";
       spf=neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id y5si390533qkl.6.2020.03.12.17.25.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 17:25:27 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::743 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id m2so9644456qka.7
        for <linux-ntb@googlegroups.com>; Thu, 12 Mar 2020 17:25:27 -0700 (PDT)
X-Received: by 2002:a37:9a82:: with SMTP id c124mr10384195qke.193.1584059127227;
        Thu, 12 Mar 2020 17:25:27 -0700 (PDT)
Received: from kudzu.us ([2605:a601:a664:2e00:38a9:cfd2:746b:b1f5])
        by smtp.gmail.com with ESMTPSA id 18sm4147091qkk.84.2020.03.12.17.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 17:25:26 -0700 (PDT)
Date: Thu, 12 Mar 2020 20:25:25 -0400
From: Jon Mason <jdmason@kudzu.us>
To: Sanjay R Mehta <sanmehta@amd.com>
Cc: Arindam Nath <arindam.nath@amd.com>,
	Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Jiasen Lin <linjiasen@hygon.cn>,
	Sanjay R Mehta <sanju.mehta@amd.com>, linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 00/15] AMD ntb driver fixes and improvements
Message-ID: <20200313002524.GB13046@kudzu.us>
References: <cover.1580914232.git.arindam.nath@amd.com>
 <a8e98fe8-25da-3ea7-a204-2fee07c6061a@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <a8e98fe8-25da-3ea7-a204-2fee07c6061a@amd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b="XxIq/hao";       spf=neutral (google.com: 2607:f8b0:4864:20::743 is
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

On Fri, Feb 07, 2020 at 04:28:53PM +0530, Sanjay R Mehta wrote:
> 
> 
> On 2/5/2020 9:24 PM, Arindam Nath wrote:
> > [CAUTION: External Email]
> > 
> > This patch series fixes some bugs in the existing
> > AMD NTB driver, cleans-up code, and modifies the
> > code to handle NTB link-up/down events. The series
> > is based on Linus' tree,
> > 
> > git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > 
> > Arindam Nath (15):
> >   NTB: Fix access to link status and control register
> >   NTB: clear interrupt status register
> >   NTB: Enable link up and down event notification
> >   NTB: define a new function to get link status
> >   NTB: return the side info status from amd_poll_link
> >   NTB: set peer_sta within event handler itself
> >   NTB: remove handling of peer_sta from amd_link_is_up
> >   NTB: handle link down event correctly
> >   NTB: handle link up, D0 and D3 events correctly
> >   NTB: move ntb_ctrl handling to init and deinit
> >   NTB: add helper functions to set and clear sideinfo
> >   NTB: return link up status correctly for PRI and SEC
> >   NTB: remove redundant setting of DB valid mask
> >   NTB: send DB event when driver is loaded or un-loaded
> >   NTB: add pci shutdown handler for AMD NTB
> 
> The patch series looks good to me. Thanks for the changes.
> 
> For all the ntb_hw_amd changes:
> 
> Reviewed-by: Sanjay R Mehta <sanju.mehta@amd.com>

I had to rework the first patch, since Jiasen's patch was already in
my tree for a couple months.  The rest applied fine and will be in my
git trees on github in a couple of hours (sanity build pending).

Thanks,
Jon

> 
> 
> > 
> >  drivers/ntb/hw/amd/ntb_hw_amd.c | 290 ++++++++++++++++++++++++++------
> >  drivers/ntb/hw/amd/ntb_hw_amd.h |   8 +-
> >  2 files changed, 247 insertions(+), 51 deletions(-)
> > 
> > --
> > 2.17.1
> > 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200313002524.GB13046%40kudzu.us.
