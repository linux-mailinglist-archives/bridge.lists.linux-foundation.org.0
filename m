Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A512DE529
	for <lists.bridge@lfdr.de>; Fri, 18 Dec 2020 15:54:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93B8C877E4;
	Fri, 18 Dec 2020 14:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id caZgiAJsid-O; Fri, 18 Dec 2020 14:54:16 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 224D5877DF;
	Fri, 18 Dec 2020 14:54:16 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED7C0C0893;
	Fri, 18 Dec 2020 14:54:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9AF5FC0893
 for <bridge@lists.linux-foundation.org>; Fri, 18 Dec 2020 14:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 89D1787A19
 for <bridge@lists.linux-foundation.org>; Fri, 18 Dec 2020 14:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tGybLUJfHJ18 for <bridge@lists.linux-foundation.org>;
 Fri, 18 Dec 2020 14:54:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 44DFE87AC8
 for <bridge@lists.linux-foundation.org>; Fri, 18 Dec 2020 14:54:12 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id u19so2643880edx.2
 for <bridge@lists.linux-foundation.org>; Fri, 18 Dec 2020 06:54:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=uQ6jWd7pXbXYJmMcN/wu3/5WUx3HDf1UbMUwwUT3sRE=;
 b=ffaxlezXtNYOmd9Wuuj+S52kq5XRKbUedXWne+5j9mGPr8QmyLawAcoWbmt0gHEbM3
 XZ7yq9EKyd2WbavUdvQ3JvsSpyVjKX1YACyiH3KT1n4JcuqExwM+ZHvxzFHTn2WUonG9
 QA6yloUiUzXIuATTJLvAFOXBZUmTjpIhJmZfzplIHzOwAS8JhVT/klrin1vzj3MkREwT
 idv69zIebv3rJleFWRQqylXxvnwpExk37Fr2NYg3MnvaEPkinfqgbEZTxj9AlY62IEP9
 qVCI/Ag3umsXrJPKOZLjx1GlKbhpjFaNjuNxtlwi+SiuA1+VE8ZyJmIagWHdwzk4AOdD
 TS8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=uQ6jWd7pXbXYJmMcN/wu3/5WUx3HDf1UbMUwwUT3sRE=;
 b=HxWwIy5Ak2ZKB205IddRbSYIyllevHX9UJ/fAm9gRRNjcWKlHSOJgj55HWY6yWqjLH
 53y46rc38K5lQFzr9fHhqDV4VT/pTymDZI8+1WFeQHSXTKg56q9qm4LWq6k+uZ6mXxUu
 vMVe/P9xOqkdLasMTOcUiedc38nnVpbdRiJ+Ds6RrL/NTTs7TtbWzRoC8QxZpiqo4KP5
 Pk9bWn3URk7leHoZYe2t1xWSizskeHPvm9vQeWGYeUtAjpGMYPLNiYVf4+0J1wjDin/V
 3BTNlpIRAzITyXdELeeeEuMJcNoXygVKDTn1ay7ePqVfbk7KpfaOowkJ52cH0FgwvbGZ
 lIgw==
X-Gm-Message-State: AOAM530ABK1WH3o6KpZKHaRY84kRaDH6waQsxl6WOO6bI/VnUXK31YVr
 jf1sah53Yz9h9GRKWjuQO7T1/tgo5w8UnA==
X-Google-Smtp-Source: ABdhPJwgREAk50WV0gBVp7JxMus3r6G/Xn8yYaM7cdHi9XWwUPYYPpgGhGXs4zcPDhRh0OWWbee7LA==
X-Received: by 2002:a50:dacd:: with SMTP id s13mr4787589edj.173.1608303250360; 
 Fri, 18 Dec 2020 06:54:10 -0800 (PST)
Received: from [192.168.1.157] (83-87-52-217.cable.dynamic.v4.ziggo.nl.
 [83.87.52.217])
 by smtp.gmail.com with ESMTPSA id f18sm25202897edt.60.2020.12.18.06.54.09
 for <bridge@lists.linux-foundation.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Dec 2020 06:54:09 -0800 (PST)
To: bridge@lists.linux-foundation.org
References: <20200423213643.GC1054188@lunn.ch>
From: Eric Woudstra <ericwouds@gmail.com>
Message-ID: <e71e97fe-7594-67cd-4d6c-34cab81144ee@gmail.com>
Date: Fri, 18 Dec 2020 15:54:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200423213643.GC1054188@lunn.ch>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Bridge] [RFC PATCH net-next] net: bridge: fix client roaming
 from DSA user port
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


Hi Andrew and Chuanhong,

What is the status of this patch?

I am running into the same problem on my wrt3200acm and wrt1900acs, 
running on linux kernel, dsa driver and ubuntu.

I tried the patch below, without any luck. Although I have conceived two 
other work-arounds, I am curious if there is a real fix for this issue.

diff -Naur a/drivers/net/dsa/mv88e6xxx/chip.c 
b/drivers/net/dsa/mv88e6xxx/chip.c
--- a/drivers/net/dsa/mv88e6xxx/chip.c    2020-10-03 11:21:32.000000000 
+0200
+++ b/drivers/net/dsa/mv88e6xxx/chip.c    2020-12-18 15:01:58.010404773 
+0100
@@ -2476,3 +2475,0 @@
-    /* Disable learning for CPU port */
-    if (dsa_is_cpu_port(ds, port))
-        reg = 0;


Regards,

Eric Woudstra


