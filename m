Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 71DA8214E91
	for <lists.bridge@lfdr.de>; Sun,  5 Jul 2020 20:38:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 578F788198;
	Sun,  5 Jul 2020 18:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SetBEPsRodDr; Sun,  5 Jul 2020 18:38:29 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 83FCA87FF1;
	Sun,  5 Jul 2020 18:38:29 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 66CA0C016F;
	Sun,  5 Jul 2020 18:38:29 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 53A7DC016F
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 18:38:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CB4A87267
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 18:38:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vbmSMR-mcRX0 for <bridge@lists.linux-foundation.org>;
 Sun,  5 Jul 2020 18:38:27 +0000 (UTC)
X-Greylist: delayed 00:05:10 by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64FF887261
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 18:38:27 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e4so42759302ljn.4
 for <bridge@lists.linux-foundation.org>; Sun, 05 Jul 2020 11:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=H0dBiMlIz57i5a6OQd6NNT0qs7e4FvnqEbY3KZH5hD8=;
 b=CdFIz0ffcFB5FT8t5IaEhDZyUUp01nVtQqvO1mpda5BxsFn2930XF2Z2oE2exxz4wn
 l7XKnvQC3uMablm/vg23TOUkkdnchyDUsIDZcmMkE88p5vjGI/eQhYjCk2qARTMEzSB7
 TGa0jTtLBjq/jNgaLRuSK9wALpCB3Y9hy0Dds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=H0dBiMlIz57i5a6OQd6NNT0qs7e4FvnqEbY3KZH5hD8=;
 b=kc+zQWF9ZPi23G6scKAtIODkr/ZSXwH+9baqNqt4ZSh4Q/JTcXcNtMOqiFbTeBgCNr
 CV2xro9dwZ0saBweeFZmqKcm2bspoOQ07oGRJkZA+PhlXze2UEVswdMZFYdoQt76focf
 EuASTHk7A4sI+HHdhu2U3KTn3Cow9eH+gpnAbtI4sf4eqSo0+Obvncxg7tbr6qtBSFCy
 O1dGzAc9pneoIZl3UsahRPVJ4HSLmS/qqKAO7hUHqj/I+F3m+oiAUybaAfQQTfs9afIc
 Rl8jAb1ssv0xoXcOB4sLxq6Ist8puZX6Rjtx5OkWwrxl5I594yHssfDG3K9UWq+zsUmO
 xRjw==
X-Gm-Message-State: AOAM5331Dv2fRUvgNBOdh7R7TTUd2VvfB9Cp7MLE76lNRUQYjqSd0hAM
 bg3O5lBb1aaZgMpqtLpyxVlRFRXGwJj0Pg==
X-Google-Smtp-Source: ABdhPJw1YolUJEgQOjHxaMMgrtEFfdKzMndj+fP4DQxRb8lTkT+E4qELkvffnnn/b1BV5qIxiEI5+g==
X-Received: by 2002:a50:fc88:: with SMTP id f8mr20587991edq.314.1593973995305; 
 Sun, 05 Jul 2020 11:33:15 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id u17sm14476477eje.74.2020.07.05.11.33.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jul 2020 11:33:14 -0700 (PDT)
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 netdev@vger.kernel.org
References: <20200705182234.10257-1-linus.luessing@c0d3.blue>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <093beb97-87e8-e112-78ad-b3e4fe230cdb@cumulusnetworks.com>
Date: Sun, 5 Jul 2020 21:33:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200705182234.10257-1-linus.luessing@c0d3.blue>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Martin Weinelt <martin@linuxlounge.net>,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 "David S . Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH net] bridge: mcast: Fix MLD2 Report IPv6
 payload length check
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

On 05/07/2020 21:22, Linus Lüssing wrote:
> Commit e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in
> igmp3/mld2 report handling") introduced a small bug which would potentially
> lead to accepting an MLD2 Report with a broken IPv6 header payload length
> field.
> 
> The check needs to take into account the 2 bytes for the "Number of
> Sources" field in the "Multicast Address Record" before reading it.
> And not the size of a pointer to this field.
> 
> Fixes: e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report handling")
> Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
> ---
>  net/bridge/br_multicast.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

I'd rather be more concerned with it rejecting a valid report due to wrong size. The ptr
size would always be bigger. :)

Thanks!
Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index 83490bf73a13..4c4a93abde68 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -1000,21 +1000,21 @@ static int br_ip6_multicast_mld2_report(struct net_bridge *br,
>  	num = ntohs(icmp6h->icmp6_dataun.un_data16[1]);
>  	len = skb_transport_offset(skb) + sizeof(*icmp6h);
>  
>  	for (i = 0; i < num; i++) {
>  		__be16 *_nsrcs, __nsrcs;
>  		u16 nsrcs;
>  
>  		nsrcs_offset = len + offsetof(struct mld2_grec, grec_nsrcs);
>  
>  		if (skb_transport_offset(skb) + ipv6_transport_len(skb) <
> -		    nsrcs_offset + sizeof(_nsrcs))
> +		    nsrcs_offset + sizeof(__nsrcs))
>  			return -EINVAL;
>  
>  		_nsrcs = skb_header_pointer(skb, nsrcs_offset,
>  					    sizeof(__nsrcs), &__nsrcs);
>  		if (!_nsrcs)
>  			return -EINVAL;
>  
>  		nsrcs = ntohs(*_nsrcs);
>  		grec_len = struct_size(grec, grec_src, nsrcs);
>  
> 

