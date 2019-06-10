Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D263B834
	for <lists.bridge@lfdr.de>; Mon, 10 Jun 2019 17:21:55 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8850BCAA;
	Mon, 10 Jun 2019 15:21:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 09AD9C84
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 15:21:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7A39582F
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 15:21:35 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id d18so9606449wrs.5
	for <bridge@lists.linux-foundation.org>;
	Mon, 10 Jun 2019 08:21:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cumulusnetworks.com; s=google;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=E/V+F42zy5zDKXGy0YG+Ock4S+/7BVw/qPxdB1U2uGs=;
	b=RSLSKKk0Jh+zqrNJW4rQrIzFfUaR2OwteUKHFydDh+k1VWL0Gdjei10FjpMsTD6LQx
	K0D/wl1ro0m3nkYc3AFFzOyn5g5VBXMkQgaVP4RnrLgoFYX5q1W3nXnM+xDtca3Y+AXw
	7w06UdyA+BT1AON8gHw3iRKpXf6CamR2Q7hdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=E/V+F42zy5zDKXGy0YG+Ock4S+/7BVw/qPxdB1U2uGs=;
	b=BXVPaZJX4blkZ2/8YfAzVolsVTRh4wda2UguveF+NP2hoXvwdK6vL7Q/9HrV1vMujg
	koc0H9TePfILa17ajO+rYE7MAGaxzIsna1LjDR4bB9Bs9M8KPdn207+zHSzh881Vyw7A
	kroIuACeWs/0tRhOdKWH1mwYEM+GiDeFYoc2FZ8HI9rGov5vXnvU0+Nl/2rAg6kiITHv
	w611hg0BU7RHTR5V3UU7vZJQNZQ2f9nvAiGZdM6wJZpzrH8tl/vXj1tK++NHHnoRQtFa
	CxZTcDWfveGwWQZya/XjkiLVuVxhZSG+SZcK3SVts43ewRbZHiX95/lhQx7qlfVLK31r
	72+A==
X-Gm-Message-State: APjAAAXC/8DBux2EG5DD7uwxCqugpjhKV7DksLN4UKqs0Thh+foD7UUX
	El029JmkbsWuk8GGSoX2Jo2KCw==
X-Google-Smtp-Source: APXvYqypApQbwGQXshxFKWF08IJiSXphABA2kZ7DNpaLAT6oBbWhwNaoYuCj33hmoJeLOHxMx8K1/Q==
X-Received: by 2002:adf:ee4a:: with SMTP id w10mr34236928wro.311.1560180094079;
	Mon, 10 Jun 2019 08:21:34 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
	by smtp.gmail.com with ESMTPSA id 66sm5461960wma.11.2019.06.10.08.21.33
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Jun 2019 08:21:33 -0700 (PDT)
To: wenxu@ucloud.cn, roopa@cumulusnetworks.com
References: <1560159846-29933-1-git-send-email-wenxu@ucloud.cn>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <55b99afa-7ce5-f9e3-89fb-6f3d17985519@cumulusnetworks.com>
Date: Mon, 10 Jun 2019 18:21:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <1560159846-29933-1-git-send-email-wenxu@ucloud.cn>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next] bridge: Set the pvid for untaged
 packet before prerouting
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
	<mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
	<mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Sender: bridge-bounces@lists.linux-foundation.org
Errors-To: bridge-bounces@lists.linux-foundation.org

On 10/06/2019 12:44, wenxu@ucloud.cn wrote:
> From: wenxu <wenxu@ucloud.cn>
> 
> bridge vlan add dev veth1 vid 200 pvid untagged
> bridge vlan add dev veth2 vid 200 pvid untagged
> 
> nft add table bridge firewall
> nft add chain bridge firewall zones { type filter hook prerouting priority - 300 \; }
> nft add rule bridge firewall zones counter ct zone set vlan id map { 100 : 1, 200 : 2 }
> 
> As above set the bridge port with pvid, the received packet don't contain
> the vlan tag which means the packet should belong to vlan 200 through pvid.
> User can do conntrack base base on vlan id and map the vlan id to zone id
> in the prerouting hook.
> 
> Signed-off-by: wenxu <wenxu@ucloud.cn>
> ---
>  net/bridge/br_input.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Nacked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Hi,
I don't think this is a good idea for a few reasons:
- duplicating code (pvid insertion by __allowed_ingress)
- adding 2 new tests in the fast path (even 3 in the vlan filtering case)
- issue can be solved with current state by using different config

Why do you need the vid to be set when you can assume that all the traffic from
that port belongs to the pvid vlan ? In this case you can match the port ifindex
for example and associate the zones based on that. Another approach - you can
insert the vlan by tc's vlan action on ingress, you'll get the same effect.

Overall this looks like an issue solvable by different config instead of adding new tests
in the fast path and increasing the complexity of the bridge input code for little value.

Cheers,
 Nik


