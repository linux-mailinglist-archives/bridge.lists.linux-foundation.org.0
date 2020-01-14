Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0286313AF8D
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 17:37:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1151485F92;
	Tue, 14 Jan 2020 16:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJ43PyuoJoef; Tue, 14 Jan 2020 16:36:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2BB2485F85;
	Tue, 14 Jan 2020 16:36:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1AEDCC077D;
	Tue, 14 Jan 2020 16:36:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 6C776C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:36:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 616E6846BF
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:36:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aGzk2vYqg0vE for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 16:36:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
 [209.85.167.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 907E58489F
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 16:36:51 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id 9so10323122lfq.10
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 08:36:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=V2/KACwQfuatGD6xiBWykj7BNbLnSCoeL08Mx230O9w=;
 b=KMHOAoyODqv/sIwy3dOoTEhjU3Z918xwkAGL76mJjmwpi2a3LbUK16dHfaL3Xaf4WK
 q4sgR/qtO07q+q7i699yKKMRfcTKsXsfvN0Pr70rsCT2nWjhzvMEj+VV7B6RBo/mGMHk
 5iAh92DBrZ1TS+8hwQcrAiK9UATl3+6N5Kpfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V2/KACwQfuatGD6xiBWykj7BNbLnSCoeL08Mx230O9w=;
 b=rIuzX6Rlry+xRFJYY58Gu0K0TgdyWoT8Du3cnaZc8W7m98RKqOIkxHdip8/IN3Lav/
 BZJU5ZqcoB5lOrBrz/aJ/x5IVE5JcY2lDt6xILZdsneBAtfLJRQ4jzgZUrl2z/+iEFbp
 tKIe/SmAdhk158aKnF6ruqFkxUaCQ/BGjRul07E8Nj6G91gTGd9ETGO7rjNHRpsjkyK1
 jLSKs1Xo5ijzmtXXTWJLU7aiKtO6XlDcoaKYXhckwxp2dOXcb0ox+5SPZKPuup9uZm56
 6UiHb6Bj6rDWvUyePGoy4c3RE9p/t2I/0JcfvkM8myK6C7+IYDtuahd5+2Br63caZnjE
 t7pQ==
X-Gm-Message-State: APjAAAWIt+Ua1rTDrtF8NZZcCQZGDtM07/FClooWN1evFesTX/rQMksh
 qpkEvLAjUxjF2CHRoA8UpEcx32o08Pg=
X-Google-Smtp-Source: APXvYqxCBUsAFl2wOUpsoWrmjTzIQuWo/Akdp2UkvaQFIQvYpa8q+WkhJB4KSifekgs05tQw4ojVSA==
X-Received: by 2002:ac2:4316:: with SMTP id l22mr2274218lfh.115.1579019809333; 
 Tue, 14 Jan 2020 08:36:49 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id n11sm7751988ljg.15.2020.01.14.08.36.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 08:36:48 -0800 (PST)
To: David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
 <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
 <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <00c4bc6b-2b31-338e-a9ad-b4ea28fc731c@cumulusnetworks.com>
Date: Tue, 14 Jan 2020 18:36:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/8] net: bridge: vlan: add rtm
 definitions and dump support
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

On 14/01/2020 17:34, David Ahern wrote:
> On 1/14/20 6:55 AM, Jakub Kicinski wrote:
>> On Mon, 13 Jan 2020 17:52:28 +0200, Nikolay Aleksandrov wrote:
>>> +static int br_vlan_rtm_dump(struct sk_buff *skb, struct netlink_callback *cb)
>>> +{
>>> +	int idx = 0, err = 0, s_idx = cb->args[0];
>>> +	struct net *net = sock_net(skb->sk);
>>> +	struct br_vlan_msg *bvm;
>>> +	struct net_device *dev;
>>> +
>>> +	if (cb->nlh->nlmsg_len < nlmsg_msg_size(sizeof(*bvm))) {
>>
>> I wonder if it'd be useful to make this a strict != check? At least
>> when strict validation is on? Perhaps we'll one day want to extend 
>> the request?
>>
> 
> +1. All new code should be using the strict checks.
> 

IIRC, I did it to be able to add filter attributes later, but it should just use nlmsg_parse()
instead and all will be taken care of.
I'll respin v2 with that change.

Thanks,
 Nik



