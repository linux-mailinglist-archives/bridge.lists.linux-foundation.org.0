Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A75216AA2A
	for <lists.bridge@lfdr.de>; Mon, 24 Feb 2020 16:33:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 747A285C4F;
	Mon, 24 Feb 2020 15:33:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mjmYq0eO6fLX; Mon, 24 Feb 2020 15:33:34 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 142FB85C9F;
	Mon, 24 Feb 2020 15:33:34 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DD47CC0177;
	Mon, 24 Feb 2020 15:33:33 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id CAD4BC0177
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 15:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B6B0E204FD
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 15:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bQSH6RjXuZ3w for <bridge@lists.linux-foundation.org>;
 Mon, 24 Feb 2020 15:33:27 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by silver.osuosl.org (Postfix) with ESMTPS id C8F97204FB
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 15:33:26 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id q8so10577220ljb.2
 for <bridge@lists.linux-foundation.org>; Mon, 24 Feb 2020 07:33:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=IsWWcPyBf3Yi34lCJhNXBqNSjABC9oJnrYvhguJN/qE=;
 b=FoFsf33IZOWzsyNS7fdSHYnzIKST5V6Kudqlt2JufrGEns68j7i4T1e0+7Km2xoipc
 UQSwhGUlbG+/eOdXXYMgJFqno/85I46tSTjPt61ll43iEYRcdxTRQOcHfVhY3ENf5Bv5
 3JeSo0V8XqdhlbYuaNXG2DKYfM1QYlQZeOb4I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IsWWcPyBf3Yi34lCJhNXBqNSjABC9oJnrYvhguJN/qE=;
 b=IcY1BzIyIrzj4v5jrdw/xJU5vafPLGxBnMYADBtH2+Y07+XPJz8xJZQ6VQRS1Q7lGI
 5K94k0bZTriK3EdNT9lv9xZiuoGHPOoDLHFM3bwNJz/mjH2SCGoTvGFfimMTU8cqG0RA
 4p/tKITQbWCVNMO93LOcWhOzm8zmf5BhGan+P19X+ojuiUTL3WUlEi3TnAwOT4V298g7
 3be5cizPRnhbdJKstoRGOthwuL+e5pm6NlYBUSGPdbhofmUbC+wGuVov/B8WjoEyB04h
 WZFyn3JYUq+bMYE2B/aMjKeT5DSzs+K7bPWmsDVP3IL7MYS0oc2KTsqiGUkpoaXjGA4D
 YiVA==
X-Gm-Message-State: APjAAAUGVYdOHiodJkKmOtquJj7r4EVc3CPdxF6R8+mscvJ0MkI1xAMJ
 oe/4HhPMNWQq97xgMDfgcZdDpw==
X-Google-Smtp-Source: APXvYqy2zENuYBWFwIPXgaEjxxvxsjiG32ayrIsTzQ0V9kg0nAvD17DFlov68V/fdF5S/3QbipQoXw==
X-Received: by 2002:a2e:9b03:: with SMTP id u3mr31026984lji.87.1582558404519; 
 Mon, 24 Feb 2020 07:33:24 -0800 (PST)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id 14sm6390845ljj.32.2020.02.24.07.33.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 Feb 2020 07:33:23 -0800 (PST)
To: netdev@vger.kernel.org
References: <08a2e28b-fcf5-b26c-da75-97df67f51c7c@cumulusnetworks.com>
 <20200224130715.1446935-1-nikolay@cumulusnetworks.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <83cadec7-d659-cf2a-c0c0-a85d2f6503bc@cumulusnetworks.com>
Date: Mon, 24 Feb 2020 17:33:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200224130715.1446935-1-nikolay@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: syzbot+18c8b623c66fc198c493@syzkaller.appspotmail.com,
 roopa@cumulusnetworks.com, bridge@lists.linux-foundation.org,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net] net: bridge: fix stale eth hdr pointer in
	br_dev_xmit
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

On 24/02/2020 15:07, Nikolay Aleksandrov wrote:
> In br_dev_xmit() we perform vlan filtering in br_allowed_ingress() but
> if the packet has the vlan header inside (e.g. bridge with disabled
> tx-vlan-offload) then the vlan filtering code will use skb_vlan_untag()
> to extract the vid before filtering which in turn calls pskb_may_pull()
> and we may end up with a stale eth pointer. Moreover the cached eth header
> pointer will generally be wrong after that operation. Remove the eth header
> caching and just use eth_hdr() directly, the compiler does the right thing
> and calculates it only once so we don't lose anything.
> 
> Reported-by: syzbot+18c8b623c66fc198c493@syzkaller.appspotmail.com
> Fixes: 057658cb33fb ("bridge: suppress arp pkts on BR_NEIGH_SUPPRESS ports")
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> ---
>  net/bridge/br_device.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 

Funny but this might turn out to be a totally unrelated bug to the one reported by syzbot.
I just noticed it's saying uninit instead of use-after-free. I'm now building the
whole syz environment mentioned in the report to check it out.
That being said - the bug that I'm fixing here exists, we just might have to drop the
Reported-by: tag if it turns out the uninit bug is a different one. :)

I'll report back when I'm able to reproduce the syz uninit bug.

