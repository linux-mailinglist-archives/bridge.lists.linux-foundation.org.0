Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEC213B160
	for <lists.bridge@lfdr.de>; Tue, 14 Jan 2020 18:52:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 07E5886382;
	Tue, 14 Jan 2020 17:52:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d9wMU9mRlXHG; Tue, 14 Jan 2020 17:52:39 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 173A886388;
	Tue, 14 Jan 2020 17:52:39 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E08B5C1D8D;
	Tue, 14 Jan 2020 17:52:38 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 98401C077D
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:52:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 852C420436
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zNrMUKIIq2d1 for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jan 2020 17:52:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by silver.osuosl.org (Postfix) with ESMTPS id EA01320531
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 17:52:31 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id n12so10523155lfe.3
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jan 2020 09:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DSwJDN8tvKZIB15Co+RV4TjQqizFvEQ1g5xhaUGMxvM=;
 b=BxuIw7llM5VJ5Foo76K6dEzNdP/AoQSUESBDwYDOo/GzWwHehjwLp44avxKn67rQP4
 a9BsJXhkVJ5/SfNjUBZBWRVoMxodH6+t8I4+07dys6oUnl/uTK57Fs6T7z8xFwSsvwu0
 C4i8KCHQR1kwSFo3imo6IqI7+FgOp25qxxJBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DSwJDN8tvKZIB15Co+RV4TjQqizFvEQ1g5xhaUGMxvM=;
 b=QSvuT45IkaSh7HJs5waGzPLp5a0YWqXQLZBueFtQ3/uLWYP4SyBa0pmWRBGmFvgaqa
 o6lma7uIg5C3v9lmdfY79cw6zfoWU+JtFq0gR/3dbRo0aj46t8ttMT6rcKhGhhDnXMLG
 cfKVQ+WAUQyitBIjoJEtotj/fg2gRnxy42OXBzN8Yyz37/rB7h0q4bQE21GyQnufohM7
 Ef1o0jQjGxc439L4lObKBGJfPKO2aoD9UxJc9G3cOQ1aoYdixs7g4ieeY0d5kZpMkPK5
 cEoay2U2i9QVkHybKuk4xGEt0k/vOZNjS/+SbbCi/V+XnbjqP2qLKBzzmV+nnQJdFtX1
 BCJQ==
X-Gm-Message-State: APjAAAWWgxXF4IMAHXPAHnV0ZICSA6zvXFrhTua/ZGt+uOb8V2+5P+de
 9X1mgjTRjP+kXdG5/KP5J0bwuTholxM=
X-Google-Smtp-Source: APXvYqyZmFT5TWZSmX4q8zW9ZMDHt7BfreCFFdL1gB1A1XHgyV+RG7FHFhHQJvxinyuJEFinalnzzA==
X-Received: by 2002:ac2:5147:: with SMTP id q7mr2550922lfd.87.1579024349496;
 Tue, 14 Jan 2020 09:52:29 -0800 (PST)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id t20sm7774941ljk.87.2020.01.14.09.52.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jan 2020 09:52:28 -0800 (PST)
To: David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>
References: <20200113155233.20771-1-nikolay@cumulusnetworks.com>
 <20200113155233.20771-4-nikolay@cumulusnetworks.com>
 <20200114055544.77a7806f@cakuba.hsd1.ca.comcast.net>
 <076a7a9f-67c6-483a-7b86-f9d70be6ad47@gmail.com>
 <00c4bc6b-2b31-338e-a9ad-b4ea28fc731c@cumulusnetworks.com>
 <344f496a-5d34-4292-b663-97353f6cfa94@cumulusnetworks.com>
 <d5291717-2ce5-97e0-6204-3ff0d27583c5@gmail.com>
 <aa9878d2-22d7-3bcd-deae-cf9bccd4226e@cumulusnetworks.com>
 <473cb0a5-f6ad-ccd3-9186-02713f9cb92f@gmail.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <71fd75c5-3bb2-abf8-4977-50911d49e142@cumulusnetworks.com>
Date: Tue, 14 Jan 2020 19:52:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <473cb0a5-f6ad-ccd3-9186-02713f9cb92f@gmail.com>
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

On 14/01/2020 18:53, David Ahern wrote:
> On 1/14/20 9:50 AM, Nikolay Aleksandrov wrote:
>> Ah fair enough, so nlmsg_parse() would be better even without attrs.
> 
> that was the intention. It would be a good verification of the theory if
> you could run a test with a larger ancillary header.
> 

Just did, works like expected. Tested all sorts of wrong messages and attributes,
they get properly validated and thrown out.

Sending v2 in a minute. :)

Thanks!


