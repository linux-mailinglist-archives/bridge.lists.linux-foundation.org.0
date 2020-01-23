Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E9714702D
	for <lists.bridge@lfdr.de>; Thu, 23 Jan 2020 18:58:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 22EFC2226B;
	Thu, 23 Jan 2020 17:58:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ijwquwA5Q2-C; Thu, 23 Jan 2020 17:58:43 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 66C8F221D9;
	Thu, 23 Jan 2020 17:58:43 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2EB56C0174;
	Thu, 23 Jan 2020 17:58:43 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3DA80C0174
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 17:58:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2A7BB884FA
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 17:58:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W-N78pdoyTqw for <bridge@lists.linux-foundation.org>;
 Thu, 23 Jan 2020 17:58:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f66.google.com (mail-lf1-f66.google.com
 [209.85.167.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 43451884F5
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 17:58:41 +0000 (UTC)
Received: by mail-lf1-f66.google.com with SMTP id b15so3016838lfc.4
 for <bridge@lists.linux-foundation.org>; Thu, 23 Jan 2020 09:58:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=date:in-reply-to:references:mime-version:content-transfer-encoding
 :subject:to:cc:from:message-id;
 bh=9PZb53gn3HlYV30IW/3Iin0xPniNCS5s4n7brqy6NFs=;
 b=cv/awR2y1PRHqf6zaD9Uia66fk7WiFyzcNZ3UBvU4btFuYJlOUEwQ0F9cG89sWoVC+
 /CujA9UE+XK+DhVYW7fU8SKZVIcVIYvSGcUQco44WeSfyacHnHD+omZ5rOhZ+LjYiZxw
 YML6rS+jM7HfWvQQCvV09Dh/SQ1E3KsVNnJKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:references:mime-version
 :content-transfer-encoding:subject:to:cc:from:message-id;
 bh=9PZb53gn3HlYV30IW/3Iin0xPniNCS5s4n7brqy6NFs=;
 b=cAtL1BDR47kxrOweUdZL/N0Um+MtRR5WTLsdsJhO89j5rF4q27h8nFnS7A3VXJCedt
 hxHffx9JC8I16H47OxIhw9bWZm2dDe9DbPB8l5oGJCsxaOYK6laniQr884nf17q10Gkj
 BiBaReSfAGHhVUCGVmZx4Xq+JMn1YJ79QjIpcw3I3MG7jIeKG/bRiaCWJT1mbDzJLiL+
 inPORP8S1riJBiKZKzWIr0k1cTtvBcDvrr1gA8EAU59eslqz7y9+OH3iPKU/Gl+kE6nq
 e1REoRcgvnIptJuofr4YFlXP8m3tMQZ3rQgrMXegXjHHJBe14rqnoIPHRmJuHU2SNW2/
 o1nQ==
X-Gm-Message-State: APjAAAVHieHziQqVAxfdtFzR949yEDrjdguujyc3LYVP3+snKN4kYYUv
 /Z2+yIRvSjDKr5xfpYl1GiZTqA==
X-Google-Smtp-Source: APXvYqxzXniVD7W//rQr8q3tMwZteJwThhLh6xKvg5JLT79tWfpZn8Yuhfqxj9uz13D7Ywztb+KLSw==
X-Received: by 2002:a19:760c:: with SMTP id c12mr5257474lff.60.1579802319215; 
 Thu, 23 Jan 2020 09:58:39 -0800 (PST)
Received: from localhost (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b17sm1449130lfp.15.2020.01.23.09.58.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 Jan 2020 09:58:38 -0800 (PST)
Date: Thu, 23 Jan 2020 19:58:35 +0200
In-Reply-To: <20200123082542.06ed0a53@hermes.lan>
References: <20200123132807.613-1-nikolay@cumulusnetworks.com>
 <20200123132807.613-2-nikolay@cumulusnetworks.com>
 <20200123082542.06ed0a53@hermes.lan>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
To: Stephen Hemminger <stephen@networkplumber.org>
From: nikolay@cumulusnetworks.com
Message-ID: <B878D56B-BA6C-49A9-877D-5590BC4DC314@cumulusnetworks.com>
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 1/4] net: bridge: check port state
	before br_allowed_egress
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

On 23 January 2020 18:25:42 EET, Stephen Hemminger <stephen@networkplumber=
=2Eorg> wrote:
>On Thu, 23 Jan 2020 15:28:04 +0200
>Nikolay Aleksandrov <nikolay@cumulusnetworks=2Ecom> wrote:
>
>>  	return ((p->flags & BR_HAIRPIN_MODE) || skb->dev !=3D p->dev) &&
>> -		br_allowed_egress(vg, skb) && p->state =3D=3D BR_STATE_FORWARDING &&
>> +		p->state =3D=3D BR_STATE_FORWARDING && br_allowed_egress(vg, skb) &&
>>  		nbp_switchdev_allowed_egress(p, skb) &&
>>  		!br_skb_isolated(p, skb);
>>  }
>
>Maybe break this complex return for readability?

Sure, sounds good, but is not the point of this commit=2E=20
I'll prepare a separate cleanup patch for that=2E=20

Thanks,=20
  Nik

