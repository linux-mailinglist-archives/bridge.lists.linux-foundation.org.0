Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED35522CD76
	for <lists.bridge@lfdr.de>; Fri, 24 Jul 2020 20:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DB5E895B6;
	Fri, 24 Jul 2020 18:23:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GSFSBhaWc-9L; Fri, 24 Jul 2020 18:23:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id B549D895D5;
	Fri, 24 Jul 2020 18:22:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 88330C004C;
	Fri, 24 Jul 2020 18:22:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E1D86C004C
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 11:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D0D9E89E82
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 11:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JY91GhiUGVVk for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jul 2020 11:14:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 159FF89E1A
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 11:14:52 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id w9so5931705ejc.8
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jul 2020 04:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vdYyoECOJpkvRW+iDSJN0RIdv+nH41NS293U/5tTNzU=;
 b=B5vDCuMK34uIsnpD9z3FcIKsP+ARgUC68tC2JBNii294ZVz92X5OyPMGm1cnHIYPvl
 3DKQSNa/jdlu0biVdgVy3X/Usw30FobXy8VPbwfs9mZO4hgKFIB5Q6ou4++0iHZWcmIg
 rfstWtDzaQOlAHrnGsoBfnDZMJ2kD6uwV1y2oKkj2sr770VnwjwNmw0Za18fcxNwyhPN
 PX5gNfWd5bOhXJY1Kvg+SfF57+CLOAPlOGTBbqcVuFCBHygW7tXdpNSN+uznlRCislSc
 n2D4vVeaN2C63ZjJ8LYUcP4YwR3kpvL7IT5R8VKRAe3yBJewccDUsJmVY4TugCpk7vZl
 wX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vdYyoECOJpkvRW+iDSJN0RIdv+nH41NS293U/5tTNzU=;
 b=dLNLEbYinXE42J1p9b7Vnm7oMLfzKUSuPouE3ZpPizTaNxAhSnnqVu8Zktg9qsXmGg
 zB2WQliEblHcXusYzlKdGglNjLzjwAetvRluEJMqqIGj1XtDtEfjRre6CQhkbyEqAg0i
 oF6mhBE8S1r2ZD/rBv0MrJqB8F2KBM2B1X6rOyYKBZxH8smEYHvYbpdfAHhsokeG8IJj
 8Tr7hl56e0QpQ9bTNTPCIUBEjOUsPOA1H21qs66WgRlYbi2aIMGSEhSu+8obLwLQs1aK
 7uJbgDm9UAUnVyPrY5x3RIMfcU5GE5WEeIJnH7TMRmr0dBxN7MdxYOwWK6z3VSdpSDRR
 fNag==
X-Gm-Message-State: AOAM530OPxNNbMvs1I8g+wuulxsppbRN7tlexozCP7f10M6E4gbMem5Z
 PA90G7rIToTpyhxgaMTsoKs=
X-Google-Smtp-Source: ABdhPJz4rM+z9eQOHfGGUF+Hj1F0q1VizoeW8bUipy1mWLCV1z/2+oZlfysZjxBFObbrbyKXQkFElw==
X-Received: by 2002:a17:906:1187:: with SMTP id
 n7mr3696742eja.161.1595502890446; 
 Thu, 23 Jul 2020 04:14:50 -0700 (PDT)
Received: from ltop.local ([2a02:a03f:a7fb:e200:f109:49dc:4e2a:ea12])
 by smtp.gmail.com with ESMTPSA id y22sm1817552ejj.67.2020.07.23.04.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Jul 2020 04:14:49 -0700 (PDT)
Date: Thu, 23 Jul 2020 13:14:47 +0200
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20200723111447.3xj7cidlsspofsja@ltop.local>
References: <20200723060908.50081-1-hch@lst.de>
 <20200723060908.50081-2-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200723060908.50081-2-hch@lst.de>
X-Mailman-Approved-At: Fri, 24 Jul 2020 18:21:37 +0000
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
Subject: Re: [Bridge] [PATCH 01/26] bpfilter: fix up a sparse annotation
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

On Thu, Jul 23, 2020 at 08:08:43AM +0200, Christoph Hellwig wrote:
> The __user doesn't make sense when casting to an integer type, just
> switch to a uintptr_t cast which also removes the need for the __force.

Feel free to add my:

Reviewed-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>

-- Luc
