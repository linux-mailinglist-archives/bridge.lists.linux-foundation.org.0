Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C92D7226FE8
	for <lists.bridge@lfdr.de>; Mon, 20 Jul 2020 22:48:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F956860C5;
	Mon, 20 Jul 2020 20:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B7cCY1SF229w; Mon, 20 Jul 2020 20:48:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED29B860C1;
	Mon, 20 Jul 2020 20:48:04 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE18CC1797;
	Mon, 20 Jul 2020 20:48:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D127EC016F
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 20:48:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A616022268
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 20:48:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RN8Ebd1+J7vK for <bridge@lists.linux-foundation.org>;
 Mon, 20 Jul 2020 20:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
 [209.85.214.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 844FF221FF
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 20:48:01 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id l6so9243372plt.7
 for <bridge@lists.linux-foundation.org>; Mon, 20 Jul 2020 13:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=W3gFxb9MTLvTnCe3A+iabUWXBAu7mA9HyhZHWgTOkUw=;
 b=OGmrrLECo+9bEWcObjspsB7mZd1Knz6TplGXozOrISTfqD7/NX21SXnbWcSkV3fL4v
 rTtVk5lWAA2Zu7uZ6u1mrfxhancqzyg3QAj3aPjlEycGVWZJlozkhUGEvXA8Lh3Zhd9y
 MI2pFWCUVAw0qhoczi2fzDR5o+9jsXf0u50JS+cFIfuTYX6fdThXqy7BkTGCK/dg3wkY
 mbds6x2z1GfwvAA0D5GwOBd9MLDFeCqWgb4tYptazoXAosQDHX7Ytsgw6xoiVQCij+q6
 LhYcFToAHR8FWmsf1prWh4sudrDF50FXVoAgPYMNb7eWHKWg9zXFnQitJW8+uw6BZBn8
 8EhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=W3gFxb9MTLvTnCe3A+iabUWXBAu7mA9HyhZHWgTOkUw=;
 b=ik9V0kpMOcRdtDVTfoAIei2DrLU3Pkli34QlmlB50pgVtVSuXT7aneERhfQ/TS5wcI
 tYtGHl5hv2ko9ybSepcZCl7NDBjV0ySuppiwPuDxbXmH0HXBc3juAIlwiX73pODbByVl
 XbjAxcjEVy6qfWlgL4QLFc9hZiFgRPrNZcqmyQUHSbsH3KIzmWXxwR9RjlfWYZ1+ozZh
 hYjRaCF0on1CmkB23sCTLm086qisWF1YY8tWbf2xrQc9TX/tBGUXdlzqcWtyvWnOSh6i
 RZ2teSeT5JvQipjksP8w0zE+6D0ECuhZw+paDkhRPmVLCNDz915fxu6ZZKuy36Y6h0Ug
 XESA==
X-Gm-Message-State: AOAM532YBxfsQSPm1JIiKu7/+sRnlU7RolSKMDHz55QMlRL9gNiW3Mfc
 +HNyvkSoWVzxevW1qxVWUvg=
X-Google-Smtp-Source: ABdhPJznKJm/ctwfQ0zEUlKph93VMIYlrMPvmwUzvON4KJd0PPoASWmZCQzIIZBDlRvR10ywRtQVEg==
X-Received: by 2002:a17:902:a50d:: with SMTP id
 s13mr19573067plq.149.1595278081037; 
 Mon, 20 Jul 2020 13:48:01 -0700 (PDT)
Received: from ast-mbp.dhcp.thefacebook.com ([2620:10d:c090:400::5:e3b])
 by smtp.gmail.com with ESMTPSA id m31sm455776pjb.52.2020.07.20.13.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 13:47:59 -0700 (PDT)
Date: Mon, 20 Jul 2020 13:47:56 -0700
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200720204756.iengwcguikj2yrxt@ast-mbp.dhcp.thefacebook.com>
References: <20200720124737.118617-1-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200720124737.118617-1-hch@lst.de>
Cc: Alexei Starovoitov <ast@kernel.org>, linux-sctp@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-s390@vger.kernel.org,
 rds-devel@oss.oracle.com, Daniel Borkmann <daniel@iogearbox.net>,
 dccp@vger.kernel.org, bridge@lists.linux-foundation.org,
 lvs-devel@vger.kernel.org, coreteam@netfilter.org, mptcp@lists.01.org,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, linux-can@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, linux-hams@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-x25@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>, netdev@vger.kernel.org,
 linux-decnet-user@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 linux-crypto@vger.kernel.org, bpf@vger.kernel.org, linux-wpan@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] get rid of the address_space override in setsockopt
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Mon, Jul 20, 2020 at 02:47:13PM +0200, Christoph Hellwig wrote:
> Hi Dave,
> 
> setsockopt is the last place in architecture-independ code that still
> uses set_fs to force the uaccess routines to operate on kernel pointers.
> 
> This series adds a new sockptr_t type that can contained either a kernel
> or user pointer, and which has accessors that do the right thing, and
> then uses it for setsockopt, starting by refactoring some low-level
> helpers and moving them over to it before finally doing the main
> setsockopt method.
> 
> Note that I could not get the eBPF selftests to work, so this has been
> tested with a testing patch that always copies the data first and passes
> a kernel pointer.  This is something that works for most common sockopts
> (and is something that the ePBF support relies on), but unfortunately
> in various corner cases we either don't use the passed in length, or in
> one case actually copy data back from setsockopt, so we unfortunately
> can't just always do the copy in the highlevel code, which would have
> been much nicer.

could you rebase on bpf-next tree and we can route it this way then?
we'll also test the whole thing before applying.

sounds like v2 is needed anyway to address Eric's addr space concern?
